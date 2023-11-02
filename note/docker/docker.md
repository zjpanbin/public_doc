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
#查看容器id
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

