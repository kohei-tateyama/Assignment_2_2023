#! /usr/bin/env python

import rospy
from assignment_2_2023.msg import Position
from geometry_msgs.msg import Point
import math

goal_x=None
goal_y=None


def callback_robot(data):
    rospy.loginfo("X=%f Y=%f vel_x=%f vel_y=%f", data.x, data.y, data.vel_x, data.vel_z)
    if goal_x is not None and goal_y is not None:
        distance = math.sqrt((data.x - goal_x)**2 + (data.y - goal_y)**2)
        print("Distance of robot to target is: ", distance)

def callback_goal(data):
    global goal_x, goal_y
    goal_x = data.x
    goal_y = data.y
    print("New goal set:", goal_x, goal_y)

def get_position():
    rospy.init_node('get_dist', anonymous=True)
    rospy.Subscriber('/goal_topic', Point, callback_goal)
    rospy.Subscriber('/position', Position, callback_robot)
    rospy.spin()

    # implement a server 
    # retrieves the distance of the robot from the goals


if __name__ == '__main__':
    try:
        get_position()
    except rospy.ROSInterruptException:
        pass