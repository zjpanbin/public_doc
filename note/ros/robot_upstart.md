# robot_upstart实现ros开机自启

1、安装robot_upstart

```bash
sudo apt-get install ros-kinetic-robot-upstart
```

2、install ros开机自启相关launch

注意：launch文件地址必须是在某个package中，不能使用普通的文件路径

```bash
rosrun robot_upstart install --job service_name --user user_name --logdir log_dir package_name/launch/xxx.launch

sudo systemctl daemon-reload
```

3、卸载开机自启service

```bash
rosrun robot_upstart uninstall  service_name
```

4、开启/关闭相关service

```bash
#开启
sudo service service_name start

#关闭
sudo service service_name stop
```

