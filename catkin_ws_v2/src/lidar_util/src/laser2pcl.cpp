#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/PointCloud2.h>
#include <laser_geometry/laser_geometry.h>

ros::Publisher pub;

void scanCallback (const sensor_msgs::LaserScan::ConstPtr& scan_in)
{
  tf::TransformListener listener_;
  laser_geometry::LaserProjection projector_;
  
  if(!listener_.waitForTransform(
        scan_in->header.frame_id,
        scan_in->header.frame_id,
        scan_in->header.stamp + ros::Duration().fromSec(scan_in->ranges.size()*scan_in->time_increment),
        ros::Duration(1.0))){
     return;
  }

  sensor_msgs::PointCloud2 cloud;
  projector_.transformLaserScanToPointCloud(scan_in->header.frame_id, *scan_in, cloud, listener_);

  pub.publish(cloud);
}

int main(int argc, char **argv) {
  // ROS init
  ros::init(argc, argv, "laser2pcl");
  ros::NodeHandle nh;

  // Create a ROS subscriber for the input point cloud
  ros::Subscriber sub = nh.subscribe("scan", 1, scanCallback);
  // Create a ROS publisher for the output point cloud
  pub = nh.advertise<sensor_msgs::PointCloud2>("filtered_cloud", 1);

  ros::spin();
}