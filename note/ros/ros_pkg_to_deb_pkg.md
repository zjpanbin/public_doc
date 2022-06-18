# ros包打成deb包

ros打成deb包，可以使用bloom-generate产生debian的编译rules，然后使用fakeroot debian/rules binary打包。

简单流程如下：

编写如下脚本，放到ros package目录(即package.xml所在目录)下，运行即可在其上一层目录产生deb文件。

注意：deb打包相关内容可以==man debhelper==查看

```shell
#!/bin/bash


echo "**请输入密码**"
read password
echo "**输入密码为$password**"


deb_pkg()
{
  echo $1 | sudo -S bloom-generate rosdebian --os-name ubuntu --ros-distro kinetic
  #由于bloom-generate产生的rules默认单线程编译，下面两行打开四线程编译
  echo $1 | sudo -S sed -i 's/\tdh_auto_build/\tdh_auto_build --parallel/'  debian/rules
  echo $1 | sudo -S sed -i '/export DEB_CXXFLAGS_MAINT_APPEND=-DNDEBUG/a export DEB_BUILD_OPTIONS=parallel=4' debian/rules
  #下面为忽略某些报警信息
  echo $1 | sudo -S sed -i '/dh_shlibdeps -l/c dh_shlibdeps --dpkg-shlibdeps-params=--ignore-missing-info'  debian/rules
  echo $1 | sudo -S fakeroot debian/rules binary
}

deb_pkg $password


```

