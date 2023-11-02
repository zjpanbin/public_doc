## 目录下全部文件处理脚本

举例如下：

将目录下的全部.wav文件使用lame转化成.mp3文件

```shell
for file in *.wav
do
        lame -b 160 "$file"  "${file%.wav}.mp3"
done
```

