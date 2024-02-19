#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist
from math import pi
from std_msgs.msg import Bool

max_lin_vel = 0.5
max_ang_vel = pi/2

def callback(joy_msg):
    cmd_vel_pub = rospy.Publisher("/joy_2_cmd_vel", Twist, queue_size=1)

    cmd_vel = Twist()
    if joy_msg.buttons[5]:
        cmd_vel.linear.x = max_lin_vel * joy_msg.axes[1]
        cmd_vel.linear.y = max_lin_vel * joy_msg.axes[0]
        cmd_vel.angular.z = max_ang_vel * joy_msg.axes[3]
        cmd_vel_pub.publish(cmd_vel)
if __name__ == '__main__':
    rospy.init_node('joy_2_cmd_vel', anonymous=True)
    
    rospy.Subscriber("/joy", Joy, callback)
    rospy.spin()