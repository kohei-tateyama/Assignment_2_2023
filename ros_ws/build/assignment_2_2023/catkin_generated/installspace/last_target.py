import rospy

def get_target():
    rospy.init_node('get_target', anonymous=True)
    # returns the last target sent by the user



if __name__ == '__main__':
    try:
        get_target()

        rospy.spin()
    except ROSInterruptException:
        pass