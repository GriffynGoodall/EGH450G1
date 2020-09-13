from math import *

squareSize = 3
trackWidth = 1.5
passes = int(ceil(squareSize/trackWidth) + 1)
height = 1.5
yaw = 0

# Create empty waypoint array
waypoints = [[0] * 4 for i in range(passes*2)]

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
    waypoints[i*2] = [x, y1, height, yaw]
    waypoints[i*2+1] = [x, y2, height, yaw]
    
waypoints.insert(0, [0, 0, height, yaw])
waypoints.insert(0, [0, 0, 0, yaw])

waypoints.append([0, 0, height, yaw])
waypoints.append([0, 0, 0, yaw])
print(waypoints)