## Youbot Navigation

catkin_ws_v2 의 패키지 참조.

twist mux 실행(조이스틱 명령 우선순위 출력)

```jsx
roslaunch twist_mux twist_mux.launch
roscd youbot_teleop/scripts/
./joy_2_cmd_vel.py
```

navigation stack 실행 

```jsx
roslaunch navstack_pub nav_pub_yolo.launch
```

YOLOv8 실행(인식만)

```jsx
roslaunch yolov8_ros yolov8_3d.launch
```

동적 장애물 인식후 정지 실행 

```jsx
rosrun yolov8_ros stop_nav.py
```

---

2D clustering

```jsx
roslaunch obstacle_detector demo2.launch
```

U-V depth detetcion

```jsx
roslaunch onboard_detector run_detector.launch
```

결과영상
