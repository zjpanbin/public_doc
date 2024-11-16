## 一、设置Git的user name和email
```
git config --global user.name "xx"      
git config --global user.email "xx@gmail.com"   

git config --list(查看配置的信息)
```

## 二、远程仓库相关

### 1、添加远程仓库

运行 `git remote add <shortname> <url>` 添加一个新的远程 Git 仓库，同时指定一个方便使用的简写

```
$ git remote
origin
$ git remote add pb https://github.com/paulboone/ticgit
$ git remote -v
origin	https://github.com/schacon/ticgit (fetch)
origin	https://github.com/schacon/ticgit (push)
pb	https://github.com/paulboone/ticgit (fetch)
pb	https://github.com/paulboone/ticgit (push)
```

现在你可以在命令行中使用字符串 `pb` 来代替整个 URL。 例如，如果你想拉取 Paul 的仓库中有但你没有的信息，可以运行 `git fetch pb`。

### 2、新建分支并且和远程某分支对应

```
git checkout -b demo origin/demo
```

### 3、新建远程分支
把新建的本地分支push到远程服务器，远程分支与本地分支同名（当然可以随意起名）：
```
git push origin local_dev:origin_dev
```

### 4、删除远程分支
推送一个空分支到远程分支，其实就相当于删除远程分支：
```
git push origin :origin_dev
```
或者：
```
git push origin --delete origin_dev
```

### 5、查看远程分支地址

```
git remote -v
```

### 6、查看全部本地分支和远程分支的基本信息

```
git branch -a -vv
```

### 7、修改远程分支地址

```bash
git remote set-url origin  git@github.com:zjpanbin/public_doc.git
```

## 三、git merge简单用法

### 1、合并分支

开发分支（dev）上的代码达到上线的标准后，要合并到 master 分支：

```
git checkout dev
git pull
git checkout master
git merge dev
git push -u origin master
```
当master代码改动了，需要更新开发分支（dev）上的代码：
```
git checkout master 
git pull 
git checkout dev
git merge master 
git push -u origin dev
```

### 2、合并tag

```shell
# 获取远端全部tag
git fetch --tags origin
# 合并tag_name到本分支
git merge tag_name
```

## 四、git lfs相关

### 1、git lfs 安装

```bash
# 三句话安装git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install

# 测试是否安装成功
git lfs --version
```

### 2、git lfs push注意事项

注意git lfs push时，一定要先lfs push，再分支push，不然会出验证过期问题

## 五、本地仓库相关

### 1、本地仓库分支列表

```shell
git branch
```

### 2、删除本地仓库

```shell
# 如果有未提交代码会提醒，同时不能删除分支
git branch -d branch_name
# 无论是否有未提交代码，强制删除分支
git branch -D branch_name
```

## 六、子仓库相关

### 1、子仓库同步

主仓库切换分支后，需要把子仓库同步到相应提交版本，可以使用下面的命令

```shell
git submodule sync
git submodule update 
```

## 七、杂项

### 1、如下报错解决办法

当使用命令 git pull 出现错误信息如下:

```bash
server certificate verification failed. CAfile: none CRLfile: none
```

解决方案：

```bash
git config --global http.sslverify false
git config --global https.sslverify false
```

git clone报错：

```bash
server certificate verification failed. CAfile: /etc/ssl/certs/ca-certificates.crt CRLfile: none
```

解决方案：

```bash
export GIT_SSL_NO_VERIFY=1
```

