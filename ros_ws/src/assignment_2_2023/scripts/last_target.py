#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Point

def callback(data):
    print("Next goal is:",data.x , data.y)
    pass

def get_target():
    rospy.init_node('get_target', anonymous=True)

    rospy.Subscriber('/goal_topic', Point, callback)
    # returns the last target sent by the user



if __name__ == '__main__':
    try:
        get_target()

        rospy.spin()
    except ROSInterruptException:
        pass