#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Point
from assignment_2_2023.msg import Position
from assignment_2_2023.srv import LastTarget, LastTargetResponse


class GetLastTargetServer:
    def __init__(self) -> None:
        rospy.init_node('LastTarget', anonymous=True)
        self.last_target=Position()
        rospy.Subscriber('/goal_topic', Point, self.callback)
        self.service = rospy.Service('LastTarget',LastTarget, self.callback_service)
        # returns the last target sent by the user

    def callback(self,data):
        self.last_target = data
        print(self.last_target)

    def callback_service(self,req):
        response = LastTargetResponse()
        if self.last_target != None:
            rospy.loginfo("New target")
            response.x = self.last_target.x
            response.y = self.last_target.y
            print(response)
        else:
            rospy.loginfo("No targets yet")
        return response


if __name__ == '__main__':
    try:
        GetLastTargetServer()

        rospy.spin()
    except ROSInterruptException:
        pass