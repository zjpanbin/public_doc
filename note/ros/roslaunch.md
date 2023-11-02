## roslaunch启动


#### 相关文件
```shell
ros_source_code/src/ros_comm/roslaunch/src/roslaunch/server.py (class ROSLaunchChildHandler)
ros_source_code/src/ros_comm/roslaunch/src/roslaunch/launch.py (class ROSLaunchRunner)
```


#### 调用关系

```
ROSLaunchChildHandler.launch -->
    ROSLaunchRunner.launch -->
        ROSLaunchRunner._setup -->
            ROSLaunchRunner._launch_master -->                         ## (LOG: "auto-starting new master")
```