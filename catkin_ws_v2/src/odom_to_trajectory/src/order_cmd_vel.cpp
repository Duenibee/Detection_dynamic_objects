#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/String.h>
int main(int argc, char **argv) {
    // ROS 노드 초기화
    ros::init(argc, argv, "order_cmd_vel");
    
    // 노드 핸들 생성
    ros::NodeHandle nh;

    // cmd_vel 토픽에 메시지를 발행하는 publisher 생성
    ros::Publisher cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("order_cmd_vel", 10);
    ros::Publisher stop_order_pub = nh.advertise<std_msgs::String>("stop_order", 10);

    // 메시지 객체 생성
    geometry_msgs::Twist move_cmd;
    std_msgs::String stop_order;

    // 로봇을 이동할 속도 설정 (여기서는 간단하게 상수 값 사용)
    double linear_speed = 0.1; // m/s
    double angular_speed = 0.2; // rad/s

    // 한 변의 길이
    double side_length = 0.8; 
    double angle_rad = 1.57; 

    // 이동 시작 시간 저장
    ros::Time start_time = ros::Time::now();

    // ROS 루프
    ros::Rate rate(30); // 루프 주기를 10Hz로 설정

    while (ros::ok()) {
        // 현재 시간 계산
        ros::Time current_time = ros::Time::now();

        // 경과 시간 계산
        double elapsed_time = (current_time - start_time).toSec();

        // 한 변을 따라 이동할 때의 조건
        // 직진1
        if (elapsed_time < (side_length / linear_speed)) {
            move_cmd.linear.x = linear_speed;
            move_cmd.angular.z = 0;
        // 회전1
        } else if (elapsed_time < (side_length / linear_speed + angle_rad/angular_speed)) {
            move_cmd.linear.x = 0.0;
            move_cmd.angular.z = angular_speed;
        // 직진2
        }else if (elapsed_time < (2 * side_length / linear_speed + angle_rad/angular_speed)) {
            move_cmd.linear.x = linear_speed;
            move_cmd.angular.z = 0;
        // 회전2
        } else if (elapsed_time < (2*side_length / linear_speed + 2*angle_rad/angular_speed)) {
            move_cmd.linear.x = 0.0;
            move_cmd.angular.z = angular_speed;
        // 직진3
        }else if (elapsed_time < (3 * side_length / linear_speed + 2*angle_rad/angular_speed)) {
            move_cmd.linear.x = linear_speed;
            move_cmd.angular.z = 0;
        // 회전3
        }else if (elapsed_time < (3 * side_length / linear_speed + 3*angle_rad/angular_speed)) {
            move_cmd.linear.x = 0;
            move_cmd.angular.z =angular_speed;
        // 직진4
        }else if (elapsed_time < (4 * side_length / linear_speed + 3*angle_rad/angular_speed)) {
            move_cmd.linear.x = linear_speed;
            move_cmd.angular.z = 0;
        // 회전 4
        }else if (elapsed_time < (4 * side_length / linear_speed + 4*angle_rad/angular_speed)) {
            move_cmd.linear.x = 0;
            move_cmd.angular.z =angular_speed;

        } else{
            // 초기화
            move_cmd.linear.x = 0; 
            move_cmd.linear.y = 0;  
            stop_order.data='0';
            stop_order_pub.publish(stop_order);
            cmd_vel_pub.publish(move_cmd);

            ros::shutdown();
        }
        // cmd_vel 토픽에 메시지 발행
        cmd_vel_pub.publish(move_cmd);

        // ROS 루프 주기 기다림
        rate.sleep();

        // ROS 이벤트 처리
        ros::spinOnce();
    }

    return 0;
}