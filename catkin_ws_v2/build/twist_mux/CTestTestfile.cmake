# CMake generated Testfile for 
# Source directory: /home/dyros/catkin_ws_v2/src/twist_mux
# Build directory: /home/dyros/catkin_ws_v2/build/twist_mux
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_twist_mux_rostest_test_system.test "/home/dyros/catkin_ws_v2/build/twist_mux/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/dyros/catkin_ws_v2/build/twist_mux/test_results/twist_mux/rostest-test_system.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/dyros/catkin_ws_v2/src/twist_mux --package=twist_mux --results-filename test_system.xml --results-base-dir \"/home/dyros/catkin_ws_v2/build/twist_mux/test_results\" /home/dyros/catkin_ws_v2/src/twist_mux/test/system.test ")
set_tests_properties(_ctest_twist_mux_rostest_test_system.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/dyros/catkin_ws_v2/src/twist_mux/CMakeLists.txt;51;add_rostest;/home/dyros/catkin_ws_v2/src/twist_mux/CMakeLists.txt;0;")
subdirs("gtest")
