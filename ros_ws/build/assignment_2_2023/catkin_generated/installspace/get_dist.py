#!/usr/bin/env python3

import rospy
from assignment_2_2023.msg import Position,Goal
import math
from assignment_2_2023.srv import GetDist, GetDistResponse


class GetDistance():

    def __init__(self) -> None:
        rospy.init_node('get_dist', anonymous=True)

        #initialize variables
        self.robot = Position()
        self.goal = Goal()
        self.speedx=[]
        self.speedy=[]
        self.target_set = False
        
        # subscribe to /goal_topic to get the goal position
        rospy.Subscriber("/goal_topic", Goal, self.callback_goal)

        # subscribe to '/position' to get the robot position and velocity
        rospy.Subscriber("/position", Position, self.callback_robot)


        rospy.Service("GetDist", GetDist, self.callback_service)


    def callback_robot(self, data):
        # rospy.loginfo("X=%f Y=%f vel_x=%f vel_y=%f", data.x, data.y, data.vel_x, data.vel_y)
        # store the position and velocity to the variables
        self.robot.x = data.x
        self.robot.y = data.y
        self.robot.vel_x = data.vel_x
        self.robot.vel_y = data.vel_y
        self.speedx.append(data.vel_x)
        self.speedy.append(data.vel_y)

    def callback_goal(self, data):
        # store the new goal to the variables
        self.goal.x = data.x
        self.goal.y = data.y
        if not self.target_set:
            self.target_set = True

    def callback_service(self, req):
        #calculate the distance and average speed and return when service is called
        response = GetDistResponse()
        if self.target_set:
            response.dist = math.sqrt((self.goal.x - self.robot.x)**2 + (self.goal.y - self.robot.y)**2)
            print("target is set")
        else:
            print("none")
            response.dist=100.0
        if len(self.speedx)!=0:
            response.av_speed_x = sum(self.speedx)/len(self.speedx)
            response.av_speed_y = sum(self.speedy)/len(self.speedy)
        return response




if __name__ == '__main__':
    try:
        GetDistance()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass