#!/usr/bin/env python3
from __future__ import print_function
import rospy
from tf.transformations import quaternion_from_euler
from std_msgs.msg import String
from nav_msgs.msg import Odometry, Path
from geometry_msgs.msg import PoseWithCovarianceStamped, PoseStamped

import numpy as np


class get_odom_data:
    def __init__(self) -> None:
        #Node and msg initialization
        rospy.init_node('get_odom_data')
        self.msg = Odometry()
        self.stop_order = String()
        self.msg = rospy.Subscriber('/odom', Odometry, self.callback) 
        self.stop_order = rospy.Subscriber('/stop_order', String, self.stop_callback) 

        self.np_arr = np.array([]).reshape(0, 7)
    def callback(self, data):
        new_column = np.array([float(data.pose.pose.position.x),float(data.pose.pose.position.y),float(data.pose.pose.position.z),
                                             float(data.pose.pose.orientation.x), float(data.pose.pose.orientation.y), float(data.pose.pose.orientation.z),float(data.pose.pose.orientation.w)])
        self.np_arr = np.append(self.np_arr, [new_column], axis=0)
    def stop_callback(self, data):
        if data.data=='0':
            np.save('/home/dyros/odom2.npy', self.np_arr)
            rospy.loginfo("Numpy 배열이 성공적으로 저장되었습니다.")
            rospy.signal_shutdown('Received shutdown message')
            

if __name__ == '__main__':
    sub_odom=get_odom_data()
    #Subscription to the topic
    rospy.spin()


