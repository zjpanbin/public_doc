## linux dpkg安装和卸载命令

### 安装

dpkg安装命令

```
sudo dpkg -i xxx.deb
```

通常情况下会报依赖关系的错误，我们可以使用以下的命令修复安装

```
sudo apt-get install -f
```

### 卸载

如果要卸载安装的应用我们通过`sudo dpkg -l`查看已经安装的软件，并找到自己的安装的软件名

```
sudo dpkg -l | grep astah
```

使用`sudo dpkg -r 软件名`进行卸载

```
sudo dpkg -r astah-professional
```

使用`sudo dpkg --purge 软件名`清除相关软件配置信息

```
sudo dpkg --purge astah-professional
```

