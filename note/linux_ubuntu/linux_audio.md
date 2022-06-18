## linux命令行SOX播放mp3等文件

#### 一、安装

1.安装sox

```shell
sudo apt-get install sox
```


2.安装解码器

```shell
sudo apt-get install sox libsox-fmt-all
```

#### 二、使用

```shell
play file.mp3 repeat 3 #3表示重复播放三次,0表示无限次
```

#### 三、SOX

sox主要有下面几个命令行指令：sox、play、rec、soxi，具体使用请看man page

```shell
man sox	
```



## linux命令行wav文件和mp3文件转换

可以使用lame库进行转换

1.wav转mp3：

```
lame filename.wav filename.mp3
```

2.mp3转wav：

```
lame filename.mp3 filename.wav --decode
```

如果系统没有安装lame，可以使用以下指令安装：

```
sudo apt-get install lame
```





