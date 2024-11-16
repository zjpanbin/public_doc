# docker使用命令汇总

## 一、基本命令

```bash
# 显示已经加载的docker镜像
docker images
# 查看活跃的容器
docker ps
# 查看全部容器
docker ps -a
# 修改容器名字
docker rename <NAMES> <new_name>
# 加载镜像tar包
docker load -i <name>.tar
# 运行已加载的镜像，生成新的容器
docker run -it <REPOSITORY> /bin/bash
# 开启非活跃的容器
docker start <NAMES>
# 关闭活跃的容器
docker stop <NAMES>
# 后续进入活跃容器
docker exec -it <NAMES> /bin/bash
```

## 二、保存容器为镜像

```bash
# 查看容器id
docker ps
# 首先commit
docker commit <CONTAINER ID> <REPOSITORY>:<TAG>
# 例如
docker commit f5bc9f0199d0 demo:latest
# 再save
docker save -o <name>.tar <REPOSITORY>:<TAG> 
# 例如
docker save -o demo.tar demo:latest
```

## 三、删除容器&删除镜像

```bash
# 删除容器
docker ps -a #查看全部容器
docker rm <CONTAINER ID> #删除对应容器
# 例如
docker rm 64d56183286e

# 删除镜像
docker images #查看已加载的镜像
docker image rm <REPOSITORY>
# 例如
docker image rm demo
```

## 四、保存容器快照为镜像(占用空间小)

```bash
# 保存
docker export <CONTAINER ID>  >  <name>.tar
# 导入
docker import - <image_name>   <  <name>.tar
```

## 五、非sudo方式使用docker

```bash
# 查看用户组及成员
sudo cat /etc/group | grep docker
# 可以添加docker组
sudo groupadd docker 
# 添加用户到docker组 
sudo gpasswd -a ${USER} docker 
# 增加读写权限
sudo chmod a+rw /var/run/docker.sock
# 重启docker
sudo systemctl restart docker
```

## 六、Docker容器显示图形到宿主机屏幕

简单版：启动容器的时候

```bash
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 <REPOSITORY> /bin/bash
```

详细版：

```bash
A.在宿主机
查看当前显示的环境变量值
$ echo $DISPLAY   (要在显示屏查看，其他ssh终端不行)  ##假设为:0
或通过X11文件分析：
$ ll /tmp/.X11-unix/                            ##假设为X0= ---> :0

安装xserver
$ sudo apt install x11-xserver-utils
许可所有用户都可访问xserver
xhost +


B.在docker 容器创建时
-v /tmp/.X11-unix:/tmp/.X11-unix
-e DISPLAY=:0

例如：
docker run -itd --name 容器名 -h 容器主机名 --privileged \
           -v /tmp/.X11-unix:/tmp/.X11-unix  \
           -e DISPLAY=:0 镜像名或id /bin/bash

```

