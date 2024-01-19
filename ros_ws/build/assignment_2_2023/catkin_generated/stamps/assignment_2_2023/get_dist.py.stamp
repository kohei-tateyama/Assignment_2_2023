#! /usr/bin/env python

import rospy
from assignment_2_2023.msg import Position


def callback(data):
    rospy.loginfo("X=%f Y=%f vel_x=%f vel_y=%f", data.x, data.y, data.vel_x, data.vel_z)

def get_position():
    rospy.init_node('get_dist', anonymous=True)
    rospy.Subscriber('/position', Position, callback)
    rospy.spin()

    # implement a server 
    # retrieves the distance of the robot from the goals


if __name__ == '__main__':
    try:
        get_position()
    except rospy.ROSInterruptException:
        pass