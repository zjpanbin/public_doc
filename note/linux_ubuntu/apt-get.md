## linux apt-get安装和卸载命令

```shell
#更新安装列表
apt-get update
#升级软件
apt-get upgrade
#安装软件
apt-get install software_name
#卸载软件及其配置
apt-get --purge remove  software_name
卸载软件及其依赖的安装包
apt-get autoremove software_name

#罗列已安装软件
dpkg --list
```



## sudo apt-get update报GPG error的解决办法

#### 报告错误

GPG error： The following signatures were invalid: KEYEXPIRED 1622248854

```
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: http://mirrors.ustc.edu.cn/ros/ubuntu xenial InRelease: The following signatures were invalid: KEYEXPIRED 1622248854
```

#### 解决办法

使用如下命令查找过期密钥

```shell
sudo apt-key list | grep expired
```

将得到类似如下的结果，过期密钥为/之后的部分，即AB17C654

```
pub   4096R/AB17C654 2019-05-30 [expired: 2021-05-29]
```

更新密钥

```shell
sudo apt-key adv --recv-keys --keyserver keys.gnupg.net AB17C654  #注意此处国内无法访问到keys.gnupg.net密钥服务器，真正使用的服务器见下面
```

#### 国内可访问GPG Keyserver列表

如上命令中的keyserver国内无法访问，下面列出国内可访问的keyserver列表

```
keyserver.ubuntu.com
pgp.mit.edu
subkeys.pgp.net
www.gpg-keyserver.de
```

#### 总结

```shell
#使用如下命令查询过期密钥，假设找到的过期密钥为AB17C654
sudo apt-key list | grep expired
#使用如下命令更新密钥AB17C654
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com AB17C654
```

