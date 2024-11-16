# docker安装配置

## 一、docker安装

#### 1、更新源

```shell
sudo apt update
sudo apt upgrade
```

#### 2、安装必要的证书并允许 apt 包管理器使用以下命令通过 HTTPS 使用存储库

```shell
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release
```

#### 3、添加 Docker 的官方 GPG 密钥

```shell
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

#### 4、添加 Docker 官方库&&更新 Ubuntu 源

```shell
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
```

#### 5、安装最新 Docker CE

```shell
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

#### 6、测试是否安装完成

```shell
sudo docker version
```

## 二、非 root 用户运行 Docker 

```shell
# 增加docker用户组
sudo groupadd docker
# 将user增加到docker用户组
sudo usermod -aG docker $USER
# 
newgrp docker

# 重启
sudo reboot
```









