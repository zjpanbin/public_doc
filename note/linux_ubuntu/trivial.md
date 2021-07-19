## ubuntu 投屏设置  
在System Settings --> Display中设置即可

## ubuntu 截图
使用ubuntu自带截图工具screenshot
快捷键设置：
System setting -> hardware -> keyboard
选择shotcuts，里面有screenshots，修改相关快捷键即可

## ubuntu 移动硬盘等外设文件位置
U盘和移动硬盘等外设接入后，对应文件在如下位置：

```bash
/media/$USER/$外设名
```

## ubuntu 查找文件
使用locate
```bash
sudo locate filename
sudo locate *find_word*
```

## ubuntu 查看二进制文件
使用hexdump
```bash
hexdump file_name
hd file_name
```

## Ubuntu下解压.rar文件，提示Parsing filters is unsupported错误解决方案
Ubuntu下解压rar文件，提示错误: "Parsing filters is unsupported"
原因是Linux版本默认不支持rar商业/非自由格式，我们只需要安装unrar即可

```bash
sudo apt-get install unrar
```
安装完毕后就可以使用unrar进行解压了:
```bash
unrar e file_name
```

## 解压.7z文件
安装p7zip-full，使用7z x filename.7z解压
```bash
sudo apt install p7zip-full
7z x filename.7z  #解压
```

## ubuntu 查看系统信息
查看内核: uname -a
或者: cat /proc/version

```bash
uname -a
cat /proc/version
```
查看ubuntu版本:  lsb_release -a
```bash
lsb_release -a
```

## ubuntu 查看当前目录下的文件结构
使用tree
```bash
tree
tree -L 3 #只看前三层
```

## ubuntu 下计算器命令
使用gcalccmd
```bash
gcalccmd
```

## 查看pgm等图片格式
使用eog或者gimp
```bash
eog  mymap.pgm
gimp mymap.pgm
```

## 安装ftp工具
使用filezilla
```bash
sudo apt-get install filezilla
```

## 远程桌面

#### 一、使用向日葵

1、输入（安装依赖）：

```bash
sudo apt-get install gir1.2-javascriptcoregtk-3.0 libjavascriptcoregtk-3.0-0 libwebkitgtk-3.0-0 -y
```
2、在官网下载向日葵安装包：
https://sunlogin.oray.com/personal/download/

3、安装：
```bash
sudo dpkg -i SunloginClient-10.0.2.24779_amd64.deb
```

#### 二、使用Teamviewer

1、官网下载TeamViewer安装包：

https://www.teamviewer.com/zhcn/download/linux/

2、安装：

```
sudo dpkg -i teamviewer_15.15.5_amd64.deb
```

3、修复安装依赖问题：

```
sudo apt install -f
```

4、重新安装：

```
sudo dpkg -i teamviewer_15.15.5_amd64.deb
```

## 安装typora (markdown工具)

```bash
# or run:
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
# install typora
sudo apt-get install typora
```

## 文件及目录对比（使用meld）

安装：

```bash
sudo apt-get install meld
```

使用：

```bash
meld&
```

## Ubuntu GIT工具GitKraken安装

step1:下载

下载地址: https://www.gitkraken.com/download/linux-deb
注意：上述为最新版本，会收费，免费版本请如下获取：

```
wget https://release.axocdn.com/linux/GitKraken-v6.5.1.deb
```

step2:安装

终端输入命令: sudo dpkg -i gitkraken-amd64.deb

如果安装不成功，输入命令:

sudo apt-get -f install

然后重新输入命令:

sudo dpkg -i gitkraken-amd64.deb