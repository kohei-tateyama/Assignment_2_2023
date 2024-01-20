import rospy
from std_msgs.msg import String
import assignment_2_2023
import actionlib
import actionlib.msg
from assignment_2_2023.msg import Position, GoalStatus

def test():
    rospy.init_node('test', anonymous=True)
    action_client = actionlib.SimpleActionClient('/reaching_goal', assignment_2_2023.msg.PlanningAction)

    # wait for the server to be available
    
    action_client.wait_for_server()

    
    while not rospy.is_shutdown():
        goal = assignment_2_2023.msg.PlanningGoal()
        feedback = assignment_2_2023.msg.PlanningFeedback()
        print(goal)
        print(feedback)

if __name__ == '__main__':
    try:
        test()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass