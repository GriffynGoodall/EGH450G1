#!/usr/bin/env python

import rospy
from math import *

import actionlib
from actionlib_msgs.msg import GoalStatus

from std_msgs.msg import Empty
from std_msgs.msg import String
from contrail_manager.msg import TrajectoryAction, TrajectoryGoal
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Vector3

from nav_msgs.msg import Path
from breadcrumb.srv import RequestPath
from breadcrumb.srv import RequestPathRequest

class PathPlanner():
	def __init__(self):
		# Define waypoint parameters
		squareSize = 3.0
		trackWidth = 1.0
		passes = int(ceil(squareSize/trackWidth) + 1)
		self.height = 1.5
		self.yaw = 0.0
		self.lvl = 0.1
		
		# Create empty waypoint array
		self.waypoints = [[0] * 4 for i in range(passes*2)]

		# Cycle through each pass
		for i in range(passes):
			# If last pass is out of bounds, cap it
			if i*trackWidth > squareSize:
				x = squareSize/2
			else:
				x = -squareSize/2 + i*trackWidth

			# Alternate between up and down pass
			if i % 2 == 0:
				y1 = -squareSize/2
				y2 = squareSize/2
			else:
				y1 = squareSize/2
				y2 = -squareSize/2

			# Add waypoints
			self.waypoints[i*2] = [x, y1, self.height, self.yaw]
			self.waypoints[i*2+1] = [x, y2, self.height, self.yaw]

		# Add starting waypoints and ending waypoints	
		self.waypoints.insert(0, [0, 0, self.height, self.yaw])
		self.waypoints.insert(0, [0, 0, 0, self.yaw])

		self.waypoints.append([0, 0, self.height, self.yaw])
		self.waypoints.append([0, 0, -0.2, self.yaw])

		# Manual Waypoints	
		# self.waypoints = [[0.0, 0.0, 1.5, 0.0], [0.5, 0.2, 1.5, 0.0], [0.0, -0.5, 1.5, 0.0],\
		# 	[0.0, 0.0, 1.5, 0.0], [0.0, 0.0, 0.0, 0.0]]

		self.wpIndex = 0
		self.stop = 0
		self.repeat = 0

		# Wait for the breadcrumb interface to start up
		# then prepare a Service Client
		rospy.loginfo("[NAV] Waiting to connect with Breadcrumb")
		rospy.wait_for_service('~request_path')
		self.srvc_bc = rospy.ServiceProxy('~request_path', RequestPath)

		rospy.loginfo("Waiting for contrail to connect...")
		self.client_base = actionlib.SimpleActionClient(rospy.get_param("~contrail"), TrajectoryAction)
		self.client_base.wait_for_server()

		# Set up publishers
		self.pub_path = rospy.Publisher('~planned_path', Path, queue_size=10, latch=True)
		self.pub_im_pose = rospy.Publisher('/imagery_pose', PoseStamped, queue_size=10, latch=True)
		self.pub_nav_status = rospy.Publisher('~nav_status', String, queue_size=10, latch=True)

		# Set up subscribers
		self.sub_trig = rospy.Subscriber('~imagery_trigger', Empty, self.callback_trigger)
		self.sub_pose = rospy.Subscriber('~pose', PoseStamped, self.callback_pose)
		self.sub_im_pose = rospy.Subscriber('~imagery_pose', PoseStamped, self.callback_im_pose)

		# Call path function using current waypoint index
		self.request_path()

	def shutdown(self):
		# Unregister anything that needs it here
		self.sub_trig.unregister()
		self.sub_pose.unregister()
		self.sub_im_pose.unregister()
		self.pub_path.unregister()
		self.pub_im_pose.unregister()
		self.pub_nav_status.unregister()

	# Callback to store the current position at all times so it can be accessed later
	def callback_pose(self, msg_in):
		self.current_pos = Vector3(msg_in.pose.position.x, msg_in.pose.position.y, msg_in.pose.position.z)
		self.im_msg = msg_in

	# Callback to store the imagery position at all times so it can be accessed later
	def callback_im_pose(self, msg_in):
		self.current_im_pos = Vector3(msg_in.pose.position.x, msg_in.pose.position.y, msg_in.pose.position.z)

	# Callback to handle an alert from image processing that the target is found
	def callback_trigger(self, msg_in):
		rospy.loginfo("[NAV] Got imagery trigger!")

		rospy.loginfo("[NAV] Moving to found location")

		# Set break flag and cancel goal
		self.stop = 1
		self.client_base.cancel_goal()

		# Publish new pose and nav status
		self.im_msg.pose.position.x = self.im_msg.pose.position.x + 0.2
		self.im_msg.pose.position.y = self.im_msg.pose.position.y + 0.2
		self.pub_im_pose.publish(self.im_msg)
		self.pub_nav_status.publish("Moving")

		# Send imagery pose directly to contrail
		# Note: only safety is the fact that other request_path instance should end in 2s
		rospy.sleep(rospy.Duration(2.0))
		goal_base = TrajectoryGoal()

		x1 = self.current_pos.x
		y1 = self.current_pos.y
		z1 = self.current_pos.z
		x2 = self.current_im_pos.x
		y2 = self.current_im_pos.y
		z2 = self.current_im_pos.z

		start = Vector3(x=x1,y=y1,z=z1)
		end = Vector3(x=x2,y=y2,z=z2)

		goal_base.positions.append(start)
		goal_base.positions.append(end)
		goal_base.yaws.append(self.yaw)
		goal_base.yaws.append(self.yaw)

		dx = end.x - start.x
		dy = end.y - start.y
		dz = end.z - start.z
		dt = sqrt((dx*dx)+(dy*dy)+(dz*dz)) / self.lvl
		goal_base.duration = rospy.Duration.from_sec(dt)

		goal_base.start = rospy.Time(0)
		self.client_base.send_goal(goal_base)
		self.client_base.wait_for_result()

		# Wait for 10s at location
		rospy.loginfo("[NAV] Stopping for 5 seconds")
		self.pub_nav_status.publish("Waiting")
		rospy.sleep(rospy.Duration(5.0))

		# Send return pose directly to contrail
		rospy.loginfo("[NAV] Moving back to normal path")
		self.pub_nav_status.publish("Returning")
		goal_base2 = TrajectoryGoal()

		start = Vector3(x=x2,y=y2,z=z2)
		end = Vector3(x=x1,y=y1,z=z1)

		goal_base2.positions.append(start)
		goal_base2.positions.append(end)
		goal_base2.yaws.append(self.yaw)
		goal_base2.yaws.append(self.yaw)

		dx = end.x - start.x
		dy = end.y - start.y
		dz = end.z - start.z
		dt = sqrt((dx*dx)+(dy*dy)+(dz*dz)) / self.lvl
		goal_base2.duration = rospy.Duration.from_sec(dt)

		goal_base2.start = rospy.Time(0)
		self.client_base.send_goal(goal_base2)
		self.client_base.wait_for_result()


		rospy.loginfo("[NAV] Continuing on path...")

		# Continue on path
		self.request_path()

	# Function  to handle an alert from image processing that the target is found
	def path_display(self, path, start, end):
		msg_out = Path()
		msg_out.header = path.header

		#Insert the start pose
		ps = PoseStamped()
		ps.header = path.header
		ps.pose.position = start
		ps.pose.orientation.w = 1.0
		ps.pose.orientation.x = 0.0
		ps.pose.orientation.y = 0.0
		ps.pose.orientation.z = 0.0
		msg_out.poses.append(ps)

		# Instert the path recieved from breadcrumb
		for sp in path.poses:
			p = PoseStamped()
			p.header = path.header
			p.pose.position = sp.position
			p.pose.orientation.w = 1.0
			p.pose.orientation.x = 0.0
			p.pose.orientation.y = 0.0
			p.pose.orientation.z = 0.0
			msg_out.poses.append(p)

		#Insert the end pose
		pe = PoseStamped()
		pe.header = path.header
		pe.pose.position = end
		pe.pose.orientation.w = 1.0
		pe.pose.orientation.x = 0.0
		pe.pose.orientation.y = 0.0
		pe.pose.orientation.z = 0.0
		msg_out.poses.append(pe)

		self.pub_path.publish(msg_out)

	def request_path(self):
		# Loop through list of waypoints
		while self.wpIndex < len(self.waypoints)-1:

			# Flag for skipping waypoint incrementation
			self.skip = 0
		
			if self.stop != 0:
				self.waypoints[i][0] = self.current_pos.x
				self.waypoints[i][1] = self.current_pos.y
				self.waypoints[i][2] = self.current_pos.z
				self.stop = 0
				return
			
			# Publish scanning status
			self.pub_nav_status.publish("Scanning")

			# Get required waypoints
			i = self.wpIndex
			x1 = self.waypoints[i][0]
			y1 = self.waypoints[i][1]
			z1 = self.waypoints[i][2]
			x2 = self.waypoints[i+1][0]
			y2 = self.waypoints[i+1][1]
			z2 = self.waypoints[i+1][2]		

			# If no x or y movement, send manually to contrail (breadcrumb will fail)
			#if x1 == x2 and y1 == y2:
			if abs(x1-x2) < 0.1 and abs(y1-y2) < 0.1:
				if abs(z1-z2) < 0.1:
					# No movement at all, move on
					rospy.loginfo("[NAV] Waypoints too close, moving to next waypoint")
					self.wpIndex = self.wpIndex + 1
					continue
				else:
					rospy.loginfo("[NAV] Only vertical movement, sending directly to contrail")
					goal_base = TrajectoryGoal()

					start = Vector3(x=x1,y=y1,z=z1)
					end = Vector3(x=x2,y=y2,z=z2)

					goal_base.positions.append(start)
					goal_base.positions.append(end)
					goal_base.yaws.append(self.yaw)
					goal_base.yaws.append(self.yaw)

					dx = end.x - start.x
					dy = end.y - start.y
					dz = end.z - start.z
					dt = sqrt((dx*dx)+(dy*dy)+(dz*dz)) / self.lvl
					goal_base.duration = rospy.Duration.from_sec(dt)

					goal_base.start = rospy.Time(0)
					self.client_base.send_goal(goal_base)
					self.client_base.wait_for_result()

			else:	
				#Request a path from breadcrumb
				req = RequestPathRequest()

				# Set required waypoints for breadcrumb
				req.start.x = x1
				req.start.y = y1
				req.start.z = z1
				req.end.x = x2
				req.end.y = y2
				req.end.z = z2			

				# Send breadcrumb service request
				res = self.srvc_bc(req)

				# Use path_sparse when requesting from breadcrumb
				if len(res.path_sparse.poses) > 0:
					rospy.loginfo("[NAV] Path planned, preparing to transmit")
					self.path_display(res.path_sparse, req.start, req.end)

					# Travel to each waypoint in the breadcrumb path
					for j in xrange(len(res.path_sparse.poses) - 1):
						# If no continue flag has been set, continue
						if self.stop == 0:
							# Build new goal message
							goal_base = TrajectoryGoal()

							# Start point (and backup in case breadcrumb fails)
							goal_base.positions.append(res.path_sparse.poses[j].position)
							goal_base.yaws.append(0.0)
							self.waypointBackup = res.path_sparse.poses[j].position

							# End point
							goal_base.positions.append(res.path_sparse.poses[j+1].position)
							goal_base.yaws.append(0.0)

							# Find proportional time
							dx = res.path_sparse.poses[j+1].position.x - res.path_sparse.poses[j].position.x
							dy = res.path_sparse.poses[j+1].position.y - res.path_sparse.poses[j].position.y
							dz = res.path_sparse.poses[j+1].position.z - res.path_sparse.poses[j].position.z
							dt = sqrt((dx*dx)+(dy*dy)+(dz*dz)) / self.lvl

							# Include safety catch
							if dt < 5:
								dt = 5
							
							# Apply time to goal
							goal_base.duration = rospy.Duration.from_sec(dt)

							# Set a start time to be "start immediately"
							goal_base.start = rospy.Time(0)

							# Transmit the goal to contrail
							self.client_base.send_goal(goal_base)
							self.client_base.wait_for_result()

						# If flag has been set, break out
						else:
							break;		

				else:
					# If breadcrumb failed, reset current waypoint to last working waypoint
					if self.repeat == 1:
						rospy.logwarn("[NAV] No path received, backup failed, aborting")
						return
					else:
						rospy.logwarn("[NAV] No path received, attempting backup")
						self.waypoints[i][0] = self.waypointBackup.x
						self.waypoints[i][1] = self.waypointBackup.y
						self.waypoints[i][2] = self.waypointBackup.z
						self.skip = 1
						self.repeat = 1

			# Increment index
			if self.stop == 0 and self.skip == 0:
				self.wpIndex = self.wpIndex + 1
				self.repeat = 0
