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
        self.stop_order = String()
        # wheel mode: 0/ AMCL :1
        self.select_mode = rospy.get_param("/get_odom_data_select/select_mode", default=0)
        if self.select_mode == 0:
            self.msg = Odometry()

            self.msg = rospy.Subscriber('/odom', Odometry, self.callback_1) 
        elif self.select_mode == 1:
            self.msg = PoseWithCovarianceStamped()

            self.msg = rospy.Subscriber('/amcl_pose', PoseWithCovarianceStamped, self.callback_2) 


        self.stop_order = rospy.Subscriber('/stop_order', String, self.stop_callback) 

        self.np_arr = np.array([]).reshape(0, 7)
    def callback_1(self, data):
        new_column = np.array([float(data.pose.pose.position.x),float(data.pose.pose.position.y),float(data.pose.pose.position.z),
                                             float(data.pose.pose.orientation.x), float(data.pose.pose.orientation.y), float(data.pose.pose.orientation.z),float(data.pose.pose.orientation.w)])
        self.np_arr = np.append(self.np_arr, [new_column], axis=0)

    def callback_2(self, data):
        new_column = np.array([float(data.pose.pose.position.x),float(data.pose.pose.position.y),float(data.pose.pose.position.z),
                                             float(data.pose.pose.orientation.x), float(data.pose.pose.orientation.y), float(data.pose.pose.orientation.z),float(data.pose.pose.orientation.w)])
        self.np_arr = np.append(self.np_arr, [new_column], axis=0)

    def stop_callback(self, data):
        if data.data=='0':
            np.save('/home/dyros/odom.npy', self.np_arr)
            rospy.loginfo("Numpy 배열이 성공적으로 저장되었습니다.")
            rospy.signal_shutdown('Received shutdown message')
            

if __name__ == '__main__':
    sub_odom=get_odom_data()
    #Subscription to the topic
    rospy.spin()


