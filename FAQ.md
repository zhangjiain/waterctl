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
|                             | Ecosia         |        |              |
|                             | Kiwi Browser   |        |              |

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
