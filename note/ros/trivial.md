#### 1、rosdep init 或者rosdep update 连接错误的解决办法
如果提示的是
```
ERROR: unable to process source https://raw.githubusercontent.com/ros/rosdistro/master/rosdep/xxxxx
```
之类的错误，同时保证自己机器可以上百度的前提下，此时可能是因为raw.githubusercontent.com网站被墙了。
解决办法是修改hosts文件，添加这个网站的ip地址

```
#打开hosts文件

sudo gedit /etc/hosts

#在文件末尾添加

151.101.84.133 raw.githubusercontent.com

#保持后退出再尝试
```

#### 2、ros package安装
方式一：源码安装
从 http://wiki.ros.org/ros_package_name 找到ros package的github地址，从github上git clone到本地catkin_make install

方式二：使用 sudo apt-get install ros_package_name 安装
```bash
sudo apt-get install ros-distros-package_name

#例子：
sudo  apt-get install ros-kinetic-velodyne-driver
```

#### 3、ros 多机

首先，在用户目录下的.bashrc（/home/$USER/.bashrc）最后加入如下行：（其中的$COMPUTER_NAME为起roscore的计算机名）

```bash
export ROS_MASTER_URI=http://$COMPUTER_NAME:11311

#例子
export ROS_MASTER_URI=http://peter:11311
```

其次，修改hosts文件（sudo vi /etc/hosts），在其中加入如下行：（其中的$COMPUTER_NAME为起roscore的计算机名，前面的ip为其ip地址）

```bash
192.168.2.31  $COMPUTER_NAME

#例子
192.168.2.31  peter
```

