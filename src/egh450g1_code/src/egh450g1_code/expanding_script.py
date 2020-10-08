#!/usr/bin/env python

import rospy
import cv2
import numpy as np
from math import *

from std_msgs.msg import Header
from nav_msgs.msg import OccupancyGrid

class expander():
	def __init__(self):
		# Define grid radius
		self.grid_radius = 0.35
		
		# Set up publisher and subscriber
		self.pub_grid_expanded = rospy.Publisher('~grid_expanded', OccupancyGrid, queue_size=1, latch=True)

		# Set up subscribers
		self.sub_grid_real = rospy.Subscriber('~grid_real', OccupancyGrid, self.callback_grid)

	def shutdown(self):
		# Unregister anything that needs it here
		self.sub_grid_real.unregister()
		self.pub_grid_expanded.unregister()

	# Callback to expand the grid for breadcrumb to ensure appropriate distance is maintained
	def callback_grid(self, msg_in):
		grid = np.array(msg_in.data, np.int8)
		grid = np.divide(grid, 100.0)
		grid = np.uint8(grid)
		grid = grid.reshape(msg_in.info.height, msg_in.info.width)
		k_size = np.int8(ceil(self.grid_radius/msg_in.info.resolution)) + 1
		kernel = np.ones((k_size, k_size), np.uint8)
		grid_expanded = cv2.dilate(grid, kernel, iterations = 1)
		grid_expanded = grid_expanded.reshape(1, -1)
		grid_data = np.multiply(grid_expanded, 100)
		grid_data = np.int8(grid_data)
		grid_data = np.asarray(grid_data)

		grid_out = msg_in
		grid_out.header.stamp = rospy.Time.now()
		grid_out.data = grid_data.ravel().tolist()
		self.pub_grid_expanded.publish(grid_out)
		rospy.loginfo("[NAV] New grid has been published")