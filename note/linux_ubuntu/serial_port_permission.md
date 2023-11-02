## ubuntu串口权限修改

#### 一、给特定用户增加串口访问权限

```shell
# 给my_user用户增加串口访问权限
sudo usermod -a -G dialout my_user

# 可通过以下命令查看my_user用户所属用户组
groups my_user
```



#### 二、修改串口访问权限（针对所有用户）

```shell
# 编辑串口访问权限文件
sudo vim /etc/udev/rules.d/70-ttyusb.rules
# 给特定串口增加全用户访问权限
KERNEL=="ttyUSB[0-9]*",MODE="0666"
```

