#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
    //퍼블리쉬 할 토픽 선언
    pub_ = n_.advertise<geometry_msgs::Twist>("/pause_nav", 1);

    //섭스크라이브 할 토픽픽 선언
    sub_ = n_.subscribe("/onboard_detector/dynamic_bboxes", 1, &SubscribeAndPublish::callback, this);
  }

  void callback(const visualization_msgs::MarkerArray& input)
  {
    if (!input.markers.empty())
    {    
        geometry_msgs::Twist output;

        output.linear.x= 0;
        output.linear.y= 0;

        output.angular.z= 0;

        //callback 함수에서 받은 input을 사용해서 output을 만들고 이를 pub한다.
        ros::Time beginTime = ros::Time::now();
        ros::Duration secondsIWantToSendMessagesFor = ros::Duration(3); 
        ros::Time endTime = beginTime + secondsIWantToSendMessagesFor;
        while(ros::Time::now() < endTime )
        {
            pub_.publish(output);

            // Time between messages, so you don't blast out an thousands of 
            // messages in your 3 secondperiod
            ros::Duration(0.1).sleep();
        }

    }
  }

private: //private으로 NodeHandle과 publisher, subscriber를 선언한다.
  ros::NodeHandle n_; 
  ros::Publisher pub_;
  ros::Subscriber sub_;
};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "obstacle_detect");
  SubscribeAndPublish SAPObject; //클래스 객체 선을 하게 되면 모든게 된다.
  ros::spin();
  return 0;
}