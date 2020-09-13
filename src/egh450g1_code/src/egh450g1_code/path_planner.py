#!/usr/bin/env python

import rospy
from math import *

import actionlib
from actionlib_msgs.msg import GoalStatus

from std_msgs.msg import Empty
from contrail_manager.msg import TrajectoryAction, TrajectoryGoal
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Vector3

from nav_msgs.msg import Path
from breadcrumb.srv import RequestPath
from breadcrumb.srv import RequestPathRequest

class PathPlanner():
	def __init__(self):
		# Define Waypoints
		self.waypoints = [[0.0, 0.0, 1.5, 0.0], [0.5, 0.2, 1.5, 0.0], [0.0, -0.5, 1.5, 0.0],\
			[0.0, 0.0, 1.5, 0.0], [0.0, 0.0, 0.0, 0.0]]

		self.wpIndex = 0
		self.cont = 0
		# self.current_pos.x = 0
		# self.current_pos.y = 0
		# self.current_pos.z = 0

		# Wait for the breadcrumb interface to start up
		# then prepare a Service Client
		rospy.loginfo("[NAV] Waiting to connect with Breadcrumb")
		rospy.wait_for_service('~request_path')
		self.srvc_bc = rospy.ServiceProxy('~request_path', RequestPath)

		rospy.loginfo("Waiting for contrail to connect...")
		self.client_base = actionlib.SimpleActionClient(rospy.get_param("~contrail"), TrajectoryAction)
		self.client_base.wait_for_server()

		# Needs to be connected to contrail
		self.pub_path = rospy.Publisher('~planned_path', Path, queue_size=10, latch=True)

		# Set up subscribers
		self.sub_trig = rospy.Subscriber('~imagery_trigger', Empty, self.callback_trigger)
		self.sub_pose = rospy.Subscriber('~pose', PoseStamped, self.callback_pose)

		# self.send_wp_path(self.p_start, self.yaw_start, self.p_end, self.yaw_end, self.nom_lvel)

		# Call path function using current waypoint index
		#self.current_pos = Vector3(msg_in.pose.position.x, msg_in.pose.position.y, msg_in.pose.position.z)
		self.request_path()

	def shutdown(self):
		# Unregister anything that needs it here
		self.sub_trig.unregister()
		self.sub_pose.unregister()

	def callback_pose(self, msg_in):
		# Store the current position at all times so it can be accessed later
		self.current_pos = Vector3(msg_in.pose.position.x, msg_in.pose.position.y, msg_in.pose.position.z)

	# Callback to handle an alert from image processing that the target is found
	def callback_trigger(self, msg_in):
		rospy.loginfo("[NAV] Got imagery trigger!")
		rospy.loginfo("[NAV] Stopping for 10 seconds")

		# Set break flag, and sleep
		self.cont = 1
		self.client_base.cancel_goal()
		rospy.sleep(rospy.Duration(10.0))

		rospy.loginfo("[NAV] Continuing on path...")
		
		self.request_path()

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

			#Request a path from breadcrumb
			req = RequestPathRequest()

			# Get required waypoints
			i = self.wpIndex
			req.start.x = self.waypoints[i][0]
			req.start.y = self.waypoints[i][1]
			req.start.z = self.waypoints[i][2]
			req.end.x = self.waypoints[i+1][0]
			req.end.y = self.waypoints[i+1][1]
			req.end.z = self.waypoints[i+1][2]				

			# Send breadcrumb service request
			res = self.srvc_bc(req)

			# XXX: You could also use res.path_sparse (see breadcrumb docs)
			# if len(res.path.poses) > 0:
			if len(res.path_sparse.poses) > 0:
				rospy.loginfo("[NAV] Path planned, preparing to transmit")
				# self.path_display(res.path, req.start, req.end)
				self.path_display(res.path_sparse, req.start, req.end)

				#for j in xrange(len(res.path.poses) - 1):
				for j in xrange(len(res.path_sparse.poses) - 1):
					# If no continue flag has been set, continue
					if self.cont == 0:
						# Build new goal message
						# https://github.com/qutas/contrail/blob/master/contrail/action/Trajectory.action
						goal_base = TrajectoryGoal()

						# Start point
						# goal_base.positions.append(res.path.poses[j].position)
						goal_base.positions.append(res.path_sparse.poses[j].position)
						goal_base.yaws.append(0.0)
						# End point
						# goal_base.positions.append(res.path.poses[j+1].position)
						goal_base.positions.append(res.path_sparse.poses[j+1].position)
						goal_base.yaws.append(0.0)

						goal_base.duration = rospy.Duration.from_sec(10)

						# Set a start time to be "start imidiately"
						goal_base.start = rospy.Time(0)

						# Transmit the goal to contrail
						self.client_base.send_goal(goal_base)
						self.client_base.wait_for_result()

					# If flag has been set: change waypoints and exit
					else:
						self.waypoints[i][0] = self.current_pos.x
						self.waypoints[i][1] = self.current_pos.y
						self.waypoints[i][2] = self.current_pos.z
						self.cont = 0	
						return
				
				# Increment index if breadcrumb path successfully finished
				self.wpIndex = self.wpIndex + 1
				

			else:
				rospy.logerr("[NAV] No path received, abandoning planning")
				return;
