### Docker Compose 一键部署（强烈推荐）
### 1.使用Git Clone命令

```
git clone https://github.com/zhangjiain/waterctl.git
```

若提示报错 请到 https://github.akams.cn/ 选择能用的加速网址 使用前，先点击【节点检测】，选择延迟少的那个，再选择【Git Clone】

### 2.打开下载好的文件

```
cd waterctl
```

### 3.拉取最新最新镜像(需要在waterctl根目录里面执行)

```
docker-compose pull
```

### 4.重启项目容器(需要在waterctl根目录里面执行)

```
docker-compose down
```
先执行完上面的指令，再执行下面的指令

```
docker-compose up -d
```

### 5.结束

需要进行nginx反代,反代域名后，需要开启ssl证书，至于强制https 不建议开

### 6.温馨提示：

💡 不进行反代的话，是用不了的！
