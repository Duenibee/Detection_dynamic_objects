#!/usr/bin/env python3

# import rospy
# from geometry_msgs.msg import Twist, PoseStamped
# from nav_msgs.msg import Path
# from tf.transformations import euler_from_quaternion, quaternion_from_euler
# import math

# class CmdVelToPath:
#     def __init__(self):
#         rospy.init_node('cmd_vel_to_path_node')
#         self.cmd_vel_sub = rospy.Subscriber('/cmd_vel', Twist, self.cmd_vel_callback)
#         self.path_pub = rospy.Publisher('/cmd_vel_to_path', Path, queue_size=1)
#         self.path = Path()
#         self.robot_x, self.robot_y, self.robot_z, self.robot_roll, self.robot_pitch, self.robot_yaw = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
#         self.dt = 0.1  # 예시에서는 간격을 0.1로 설정하였습니다.

#     def cmd_vel_callback(self, cmd_vel_msg):
#         current_time = rospy.Time.now()
#         dt = (current_time - self.path.header.stamp).to_sec() if self.path.header.stamp else self.dt

#         self.update_robot_pose(cmd_vel_msg.linear.x, cmd_vel_msg.linear.y, cmd_vel_msg.linear.z,
#                                cmd_vel_msg.angular.x, cmd_vel_msg.angular.y, cmd_vel_msg.angular.z, dt)

#         pose_stamped = PoseStamped()
#         pose_stamped.header.stamp = current_time
#         pose_stamped.header.frame_id = "odom"  # 예시에서는 "odom" 프레임을 사용하였습니다.
#         pose_stamped.pose.position.x = self.robot_x
#         pose_stamped.pose.position.y = self.robot_y
#         pose_stamped.pose.position.z = self.robot_z

#         quaternion = quaternion_from_euler(self.robot_roll, self.robot_pitch, self.robot_yaw)
#         pose_stamped.pose.orientation.x = quaternion[0]
#         pose_stamped.pose.orientation.y = quaternion[1]
#         pose_stamped.pose.orientation.z = quaternion[2]
#         pose_stamped.pose.orientation.w = quaternion[3]
#         print(pose_stamped.pose.orientation.z  )

#         self.path.poses.append(pose_stamped)

#         self.path.header.stamp = current_time
#         self.path.header.frame_id = "odom"  # 예시에서는 "odom" 프레임을 사용하였습니다.
#         self.path_pub.publish(self.path)

#     def update_robot_pose(self, linear_vel_x, linear_vel_y, linear_vel_z, angular_vel_x, angular_vel_y, angular_vel_z, dt):
#         # 선속도와 각속도를 이용하여 로봇의 위치와 회전 상태를 업데이트
#         self.robot_x += linear_vel_x * dt
#         self.robot_y += linear_vel_y * dt
#         self.robot_z += linear_vel_z * dt
#         self.robot_roll += angular_vel_x * dt
#         self.robot_pitch += angular_vel_y * dt
#         self.robot_yaw += angular_vel_z * dt
# if __name__ == '__main__':
#     cmd_vel_to_path = CmdVelToPath()
#     rospy.spin()
import rospy
from geometry_msgs.msg import Twist, PoseStamped
from nav_msgs.msg import Path
from tf.transformations import quaternion_from_euler, quaternion_multiply
from geometry_msgs.msg import Quaternion

class CmdVelToPathConverter:
    def __init__(self):
        rospy.init_node('cmd_vel_to_path_converter')

        self.path_publisher = rospy.Publisher('/converted_path', Path, queue_size=10)
        self.cmd_vel_subscriber = rospy.Subscriber('/cmd_vel', Twist, self.cmd_vel_callback)

        self.path_msg = Path()
        self.path_msg.header.frame_id = 'odom'

    def cmd_vel_callback(self, cmd_vel_msg):
        linear_velocity = cmd_vel_msg.linear.x
        angular_velocity = cmd_vel_msg.angular.z

        dt = 0.1

        self.update_path(linear_velocity, angular_velocity, dt)

    def update_path(self, linear_velocity, angular_velocity, dt):
        quaternion = self.update_orientation(angular_velocity, dt)

        pose_stamped = PoseStamped()
        pose_stamped.header.stamp = rospy.Time.now()
        pose_stamped.pose.position.x += linear_velocity * dt
        pose_stamped.pose.orientation = quaternion

        self.path_msg.poses.append(pose_stamped)

        self.path_publisher.publish(self.path_msg)

    def update_orientation(self, angular_velocity, dt):
        if not self.path_msg.poses:
            current_quaternion = (0.0, 0.0, 0.0, 1.0)
        else:
            current_quaternion = (
                self.path_msg.poses[-1].pose.orientation.x,
                self.path_msg.poses[-1].pose.orientation.y,
                self.path_msg.poses[-1].pose.orientation.z,
                self.path_msg.poses[-1].pose.orientation.w
            )

        delta_theta = angular_velocity * dt
        delta_quaternion = quaternion_from_euler(0.0, 0.0, delta_theta)
        updated_quaternion = quaternion_multiply(current_quaternion, delta_quaternion)

        return Quaternion(*updated_quaternion)

if __name__ == '__main__':
    converter = CmdVelToPathConverter()
    rospy.spin()

