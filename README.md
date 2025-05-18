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

# 疑难解答

## “不支持的浏览器”

我们推荐使用**最新的** Google Chrome 或 Microsoft Edge 浏览器。您也可以自行试验其他您常用的浏览器。

如果您在意隐私或广告，可以选择 Cromite 或 Vivaldi。

注意，受 Apple 限制， iOS 上的 Chrome 仍无法使用蓝牙功能。  
您需要前往 App Store 下载 [Bluefy](https://apps.apple.com/us/app/id1492822055) 浏览器以使用蓝牙水控器 FOSS。

### 已测试可用的浏览器

| 桌面（Windows/Linux/macOS） | Android        | iOS    | ChromeOS     |
| --------------------------- | -------------- | ------ | ------------ |
| Google Chrome               | Google Chrome  | Bluefy | 您有得选吗？ |
| Microsoft Edge              | Microsoft Edge |        |              |
| Chromium                    | Cromite        |        |              |
| Vivaldi                     | Vivaldi        |        |              |
| Arc                         | 三星浏览器     |        |              |

**强烈不建议使用国产浏览器。**

## “未授予蓝牙权限。”

### 桌面（Windows/Linux/macOS）

请按顺序检查以下项目：
- 电脑已安装蓝牙硬件。
- 蓝牙驱动工作正常。
- 已在系统设置中开启蓝牙。
- 已在浏览器中为蓝牙水控器 FOSS 授权蓝牙权限。

### Android

请在手机设置中，为浏览器授予蓝牙权限。

在 Android 系统中，该权限被称作“附近设备”权限。

> [!NOTE]  
> 注意：在 Android 11 及更低版本中，访问蓝牙设备的权限被归类在“位置信息”权限当中。因此，在旧版本 Android 我们可能需要您授予这一权限。

默认情况下，浏览器会提示用户授权附近设备（或位置信息）权限。但在一部分定制的 Android 系统中，这一权限默认是“否”，需要用户手动到系统设置中授权。

我们承诺不会利用这一权限对您进行跟踪或定位。
