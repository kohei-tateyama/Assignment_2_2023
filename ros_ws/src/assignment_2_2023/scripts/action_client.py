#! /usr/bin/env python
import rospy
from std_msgs.msg import String
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist, Point
from assignment_2_2023.msg import Position, GoalStatus
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


    while not rospy.is_shutdown():
        
        # get user input
        user_input = input("Enter new goal position x,y or 'c' for cancel:")
        print(user_input)

        # if user input is 'c' 
        if user_input == 'c':
            # cancel the goal
            action_client.cancel_goal()
            print("Goal cancelled")

        
        else:
            try: # else if user_input is 2 floats
                # split the 2 floats into x,y
                coordinates = user_input.split(',')
                if len(coordinates) != 2:
                    print("ERROR! Enter the new goal position x,y")	

                x, y = map(float, coordinates)

                # set it as new goal position
                goal.target_pose.pose.position.x = x
                goal.target_pose.pose.position.y = y  
            
                goal_msg = Point()
                goal_msg.x = goal.target_pose.pose.position.x
                goal_msg.y = goal.target_pose.pose.position.y

                # publish newly set targets
                goal_pub = rospy.Publisher('/goal_topic', Point, queue_size = 1)
                goal_pub.publish(goal_msg)                                    
                            
                action_client.send_goal(goal)
				# Print a error message if the input is not a float value
            except ValueError: # else if user_input is not 2 floats
                print("ERROR! Enter the new goal position x,y")	
            
            



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
    msg.vel_y = linear_velocity.y
    # publish the position and velocity with position.msg
    pub.publish(msg)


def callback_goal(data):
    if(len(data.status_list)!=0):
        print(data)



if __name__ == '__main__':
    try:
        client()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass