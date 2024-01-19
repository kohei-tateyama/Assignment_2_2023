#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist, Point
from assignment_2_2023.msg import Position
import assignment_2_2023
import actionlib
import actionlib.msg

def client():
    # initialize node
    rospy.init_node("action_client_node", anonymous=True)

    # subscribe to rostopic /odom 
    # and receive robot position with custom message
    rospy.Subscriber('/odom', Odometry, callback_odom) # everytime odom is updated, callback_odom is called

    # set as action client to check if the targets are reached
    action_client = actionlib.SimpleActionClient('/reaching_goal', assignment_2_2023.msg.PlanningAction)

    # wait for the server to be available
    action_client.wait_for_server()


    goal = assignment_2_2023.msg.PlanningGoal()
    print("Enter new goal position x,y or 'c' for cancel")
    user_input = input("Enter something: ")
    print(user_input)
    while not rospy.is_shutdown:
        print("not shut down")
        user_input = input("Enter something: ")
        print(user_input)

   

        # get user input
        # if its 'c' cancel
        # if its 2 floats,
        # set it as new target positions
        
        # publish newly set targets
        goal_pub = rospy.Publisher('/goal_topic', Point, queue_size = 1)
    print("Maybe shut down")


def callback_odom(data):
    # Set the publisher for robot position
    pub = rospy.Publisher('/position', Position,  queue_size = 10)
    rate=rospy.Rate(1)
    # position
    position_ = data.pose.pose.position

    # velocity
    linear_velocity = data.twist.twist.linear

    msg = Position()
    msg.x = position_.x
    msg.y = position_.y
    msg.vel_x = linear_velocity.x
    msg.vel_z = linear_velocity.z
    # publish the position and velocity with position.msg
    pub.publish(msg)




if __name__ == '__main__':
    try:
        client()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass