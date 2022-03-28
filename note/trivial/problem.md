### 编译过程中疑难杂症

#### 1、cartographer编译时报“  links to target "glog::glog" but the target was not found  ”

报此问题一般是glog库出了问题，需要重装glog库，如下：

```shell
//卸载
sudo apt-get remove libgoogle-glog-dev

//安装
sudo apt-get install libgoogle-glog-dev
```

