#### 1、设置Git的user name和email
```
git config --global user.name "xx"      
git config --global user.email "xx@gmail.com"   

git config --list(查看配置的信息)
```

#### 2、新建分支并且和远程某分支对应
```
git checkout -b demo origin/demo
```

#### 3、新建远程分支
把新建的本地分支push到远程服务器，远程分支与本地分支同名（当然可以随意起名）：
```
git push origin local_dev:origin_dev
```

#### 4、删除远程分支
推送一个空分支到远程分支，其实就相当于删除远程分支：
```
git push origin :origin_dev
```
或者：
```
git push origin --delete origin_dev
```

#### 5、查看远程分支地址

```
git remote -v
```

#### 6、查看全部本地分支和远程分支的基本信息

```
git branch -a -vv
```

#### 7、git merge简单用法
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

#### 8、git lfs push注意事项

注意git lfs push时，一定要先lfs push，再分支push，不然会出验证过期问题