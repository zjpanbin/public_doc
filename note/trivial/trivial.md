### 小问题解决方法记录

####  1、解决“保存csdn的网页再次打开会自动跳转到首页”
右键用文本编辑器打开离线保存的网页，搜索关键词setTimeout，找到类似下面这段：
```
<div style="display:none;">
	<img src="https://blog.csdn.net/lipi37/article/details/83871031" onerror="setTimeout(function(){if(!/(csdn.net|iteye.com|baiducontent.com|googleusercontent.com|360webcache.com|sogoucdn.com|bingj.com|baidu.com)$/.test(window.location.hostname)){window.location.href=&quot;\x68\x74\x74\x70\x73\x3a\x2f\x2f\x77\x77\x77\x2e\x63\x73\x64\x6e\x2e\x6e\x65\x74&quot;}},3000);">
</div>
```
删除div中间部分后保存即可

#### 2、deepin/ubuntu--解决网易云音乐个性推荐无法加载

之前删除了好几次都不成功,重新安装后之前的配置文件都还在,于是进行了下面的操作

```
find /home -name netease-cloud-music
```

发现了这个文件夹

```
/home/numb/.cache/netease-cloud-music
```

将其删除,然后重新打开网易云就OK了

```
rm -rf /home/numb/.cache/netease-cloud-music
```

