import rospy
from std_msgs.msg import String
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist, Point
from assignment_2_2023.msg import Position

def client():
    # initialize node
    rospy.init_node("action_client_node", anonymous=true)

    # subscribe to rostopic /odom 
    rospy.Subscriber('/odom', Odometry, )

    # and receive robot position with custom message

    # subscribe to feedback/status
    # check if target is reached

    # publish the position and velocity with position.msg
    pub = rospy.Publisher('/position', Position,  queue_size = 10)

    while not rospy.is_shutdown():
        msg = Position()
        msg.x = 3.12
        msg.y = 4.10
        msg.vel_x = 9.4
        msg.vel_z = 3.52
        pub.publish(msg)
        rate.sleep(1)


    # get user input
    # if its 'c' cancel
    # if its 2 floats,
    # set it as new target positions



def callback_odom(msg):

    # position
    position_ = msg.pose.pose.position

    # velocity
    linear_velocity = data.twist.twist.linear






if __name__ == '__main__':
    try:
        client()
    except rospy.ROSInterruptException:
        pass