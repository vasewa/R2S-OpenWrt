## R2S 基于原生 OpenWRT 固件的自动编译

### Fork自 QiuSimons 大佬

### 注意事项：

1. 靠近USB电源口的为WAN口，远离的为LAN口（与官方的接口正好相反）

2. 登陆IP：192.168.1.1 密码：无

3. 可用 OpenWrt 内置升级功能刷写升级

4. SSRP的使用方法：①添加你要的订阅链接 ②再在最后加一行空行 ③右下角点一下保存并应用 ④更新所有订阅服务器节点

5. 如无法联网，请自行排查 ipv6 连通情况（推荐关闭ipv6）

6. 从友善版固件刷写本固件，建议使用dd写卡：
```
dd if=/tmp/upload/openwrt.img of=/dev/mmcblk0 conv=fsync
```
7. 发布地址：https://github.com/vasewa/R2S-WaWrt/releases

### 版本信息：

1. 模块版本：SNAPSHOT（当日最新）

2. LUCI版本：19.07（当日最新）

### 特性及功能：

1. O3编译

2. 内置三款主题

3. 分为两个版本，标准版（With Docker）和精简版（without Docker）

4. 标准版插件包含：SSRP，OpenClash，ADBYBY，BearDropper，Docker，微信推送，网易云音乐解锁，SmartDNS，迅雷快鸟，京东签到，USB打印服务器，SQM，上网时间控制，网络唤醒，DDNS，UPNP，FullCone(防火墙中开启)，流量分载(防火墙中开启)，SFE流量分载(也就是SFE加速，防火墙中开启，且默认开启)，BBR（默认开启），irq优化，OLED屏幕支持

5. 精简版插件包含：SSRP，OpenClash，ADBYBY，BearDropper，SQM，上网时间控制，网络唤醒，DDNS，UPNP，FullCone(防火墙中开启)，流量分载(防火墙中开启)，SFE流量分载(也就是SFE加速，防火墙中开启，且默认开启)，BBR（默认开启），irq优化，OLED屏幕支持

6. 核心频率1.512GHz

### 鸣谢：

1. QiuSimons

2. QuintusChu

3. NickSun

4. NanoPi R2S Club
