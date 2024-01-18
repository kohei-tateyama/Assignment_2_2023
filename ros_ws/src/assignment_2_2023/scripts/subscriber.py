import rospy
from assignment_2_2023.msg import Position


def callback(data):
    rospy.loginfo("X=%f Y=%f vel_x=%f vel_y=%f", data.x, data.y, data.vel_x, data.vel_z)

def subscriber():
    rospy.init_node('test', anonymous=True)
    rospy.Subscriber('/position', Position, callback)
    rospy.spin()


if __name__ == '__main__':
    try:
        subscriber()
    except rospy.ROSInterruptException:
        pass