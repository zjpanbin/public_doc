### ros package中cmake_minimum_required设置

ros package的根目录下需要包含CMakeLists.txt文件，其中需要设置cmake_minimum_required，即cmake的最低版本，其需要与ros workspace下src目录中的CMakeLists.txt中设置一致，否则会报错。

ros workspace下的CMakeLists.txt：
ros wokspace中src目录下执行catkin_init_workspace或者ros wokspace中执行catkin_make，会在src目录下产生一个链接文件CMakeLists.txt，

```shell
CMakeLists.txt -> /opt/ros/kinetic/share/catkin/cmake/toplevel.cmake
```

此ros wokspace下的ros package中的CMakeLists.txt，其cmake_minimum_required设置需要与前面`src/CMakeLists.txt`中的一致

```cmake
cmake_minimum_required(VERSION 2.8.3)
```

否则会报错，报错示例：

```shell
WARNING: The CMakeLists.txt of the metapackage 'ros_demo' contains non standard content. Use the content of the following file instead: /home/panb/Personal/proj/ros_demo/build/catkin_generated/metapackages/ros_demo/CMakeLists.txt
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CMake Error at /opt/ros/kinetic/share/catkin/cmake/catkin_workspace.cmake:95 (message):
  This workspace contains non-catkin packages in it, and catkin cannot build
  a non-homogeneous workspace without isolation.  Try the
  'catkin_make_isolated' command instead.
Call Stack (most recent call first):
  CMakeLists.txt:67 (catkin_workspace)
```

