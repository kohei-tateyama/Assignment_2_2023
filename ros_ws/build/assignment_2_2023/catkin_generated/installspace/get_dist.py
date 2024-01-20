#!/usr/bin/env python3

import rospy
from assignment_2_2023.msg import Position
from geometry_msgs.msg import Point
import math
from assignment_2_2023.srv import GetDist, GetDistResponse

sum_speed_x = 0
sum_speed_y = 0
i = 0
class GetDistance():
    def __init__(self) -> None:
        rospy.init_node('get_dist', anonymous=True)
        self.goal_x=None
        self.goal_y=None
        self.robot = Position()

        
        rospy.Subscriber('/goal_topic', Point, self.callback_goal)
        rospy.Subscriber('/position', Position, self.callback_robot)
        rospy.Service('GetDist', GetDist, self.callback_service)
    
    # implement a server 
    # retrieves the distance of the robot from the goals



    def callback_robot(self, data):
        rospy.loginfo("X=%f Y=%f vel_x=%f vel_y=%f", data.x, data.y, data.vel_x, data.vel_y)
        self.robot.x = data.x
        self.robot.y = data.y
        self.robot.vel_x = data.vel_x
        self.robot.vel_y = data.vel_y

    def callback_goal(self, data):
        self.goal_x = data.x
        self.goal_y = data.y
        print("New goal set:", self.goal_x, self.goal_y)

    def callback_service(self, req):
        i+=1
        response = GetDistResponse()
        response.dist = math.sqrt((self.goal_x - self.robot.x)**2 + (self.goal_y - self.robot.y)**2)
        sum_speed_x += self.vel_x
        sum_speed_y += self.vel_y
        response.av_speed_x = sum_speed_x/i
        response.av_speed_y = sum_speed_y/i
        print(response)
        return response




if __name__ == '__main__':
    try:
        GetDistance()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass