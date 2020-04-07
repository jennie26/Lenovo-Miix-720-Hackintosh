# Lenovo-Miix-720-Hackintosh
 EFI Files for MIix720 Hack
引导及版本：OpenCore 0.57 Realese

配置：
CPU：  Intel i5 7200U
GPU：  Intel HD620
内存：  8G
硬盘：  西部数据M.2 NVMe黑盘 1T
BIOS版本：  3SEC71WW （已通过ru.efi关闭CFG Lock）
系统信息： Windows 10 / Catalina 10.15.3
网卡：BCM94352Z

更改记录：

2020/4/7
1. 删除长久未更新的Clover引导，并将OC版本目录调整为EFI，更新OC为最新0.57Realese
2. 二阶段黑屏证实未解决

能搞定的问题暂时就这些了，整理一下进行一次发布。

正常：
1. 三卡及蓝牙
2. 电量及电源适配器（实时更新电量百分比、电源插入状态）
3. 合盖睡眠、开盖唤醒（进入睡眠时间较长）
4. 触摸屏
5. SD读卡器
6. 前置摄像头
7. iMessage及FaceTime

不正常：
1. 二阶段黑屏
2. 第一次按电源键无法进入系统，需第二次按方可进入系统
3. 合盖睡眠仅能实现第一次，第二次无效
4. 偶尔出现GLAN/XHCI秒醒（可解决，暂未处理）
5. 重力感应
6. 触摸板（仅能进行单指操作，仿佛无解）
7. 输密码进入桌面后键盘丢失，需重新插拔。

折腾中未弄明白项：Method (_REG)影响BAT0/ADP0/LID0的(_STA)函数返回正常值。
具体：
EFI中SSDT-OC-BATT有对以上三个设备(_STA)的改写，全部改写成返回0x1F/0F等直接有效的值。
如果不改，未能使设备有效。
1. Method (_REG)
2. {
3.     If (Arg0 == 0x03)
4.     {
5.         Store (One, ECAV)
6.         Store (One, ECOK)
7.     }
8.     xxxxxxx
9. }
10. Method (_STA)
11. {
12.     If (ECOK)
13.     {
14.         Return (0x1F)
15.     }
16.     xxxx
17. }
即使将语句改为如上内容，仍然无法显示电量/电源状态，这个地方需要求助。
