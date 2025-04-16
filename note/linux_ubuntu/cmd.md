## linux常用命令

#### 了解某个命令的具体使用情况
简单参数等可以使用“cmd --help”，详细信息可以使用“man cmd”
以ls命令为例：

```
ls --help
man ls
```

#### 查看内存使用情况：free
使用free
```
free -m
```

#### 查看硬盘存储使用情况：df

使用df
```
df -h
```

#### 查看当前目录及子目录占用空间大小：du

使用du

```bash
du -m --max-depth=1
```

#### 文件及目录对比工具：diff

常用参数：

```
-b 忽略空格数目的不同
-B 忽略空白行
-q 只列出两个文件有无差异,并不比较
-a 强制比较二进制文件
-c 显示不同之处的前后部分内容
-r 比较目录时,比较其子目录
-y 在两侧显示两个文件
--suppress-common-line 只显示两个文件不同的行,否则不显示
--left-column 仅当两个文件不同时才显示右侧行,否则只显示左侧行
```

示例：

```
diff -r -y --left-column dir1 dir2
```

#### 压缩解压缩工具：tar

使用tar

```shell
#压缩
tar -czvf demo.tar.gz demo
#解压缩
tar -xzvf demo.tar.gz
```

#### ls 只显示目录或文件

directory :

```shell
ls -d */
ls -l | grep ^d
```


file :

```shell
ls -l | grep -v ^d
```

#### 用户及用户组相关

修改目录所属的用户组及用户

```bash
# 把home目录下的dir1目录的所属组改为gridgroup组
chgrp -R gridgroup /home/dir1 #参数-R是递归设置各级子目录
# 把home目录下的dir1目录的拥有者改为griduser用户
chown -R griduser /home/dir1  #参数-R是递归设置各级子目录
```

#### 设置系统时间

临时性设置系统时间（重启恢复）：

```shell
sudo date -s "YYYY-MM-DD HH:MM:SS"
#demo
sudo date -s "2017-01-23 10:30:00"
```

设置系统硬件时间（重启保留修改）：

```shell
sudo hwclock --set --date="YYYY-MM-DD HH:MM:SS"
#demo
sudo hwclock --set --date="2017-01-23 10:30:00"
```

