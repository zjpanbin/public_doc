# 设置ubuntu swap

交换空间swap，打个比方就是你的内存爆满了，系统就会临时把内存里一些暂时不用的数据放到硬盘上，这样内存就会空出来一部分放新的数据。如果需要用之前旧的数据，可以再把它从硬盘上搬回来。本质上交换空间就是硬盘上开辟的一块专门供内存交换数据使用的空间

## 一、查看当前系统的swap大小
```bash
free -m 
```
m 是以MB为单位， g是以GB为单位， 默认是kb

## 二、设置一个swap文件
### 1. 创建swap文件
```bash
mkdir ~/swapfile
cd ~/swapfile
sudo dd if=/dev/zero of=swap bs=1M count=8k
```
其中of=是指创建的文件名称，创建8G(bs*count)的swap
### 2. 转换swap文件
将生成的文件转换成swap类型的文件
```bash
sudo mkswap -f swap
```

### 3. 激活swap文件
```bash
sudo swapon swap
```
卸载的话使用 swapoff
```bash
sudo swapoff swap
```
## 三、永久生效
虽然交换空间到此已经扩展成功了，但是电脑重启的话，还是会恢复默认的swap大小。
如果要一直使用这个swap，要把它写入/etc/fstab文件中.（注意如果fstab中已经有swap，需要将其注释掉）

```bash
sudo cp /etc/fstab /etc/fstab.bak
echo '/home/peter/swapfile/swap none swap sw 0 0' | sudo tee -a /etc/fstab
```


