# Lenovo-Miix-720-Hackintosh
 EFI Files for MIix720 Hack
引导及版本：Clover 5097 / OpenCore 0.57 MOD

配置：
CPU：  Intel i5 7200U
GPU：  Intel HD620
内存：  8G
硬盘：  西部数据M.2 NVMe黑盘 1T
BIOS版本：  3SEC71WW （已通过ru.efi关闭CFG Lock）
系统信息： Windows 10 / Catalina 10.15.3
网卡：BCM94352Z

更改记录：

2020/3/23
1. 更新OpenCore至0.57MOD自编译
2. 修订二阶段黑屏
3. Clover未进行更新

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
1. 后置摄像头
2. 重力感应
3. 触摸板（仅能进行单指操作，仿佛无解）
4. 输密码进入桌面后键盘丢失，需重新插拔。
5. 睡眠？？（暂未发现秒醒，但好像有RTC影响睡眠情况发生，后续完善。

折腾中未弄明白项：Method (_REG)影响BAT0/ADP0/LID0的(_STA)函数返回正常值。
具体：
EFI中SSDT-OC-BATT有对以上三个设备(_STA)的改写，全部改写成返回0x1F/0F等直接有效的值。
如果不改，未能使设备有效。
Method (_REG)
{
    If (Arg0 == 0x03)
    {
        Store (One, ECAV)
        Store (One, ECOK)
    }
    xxxxxxx
}
Method (_STA)
{
    If (ECOK)
    {
        Return (0x1F)
    }
    xxxx
}
即使将语句改为如上内容，仍然无法显示电量/电源状态，这个地方需要求助。
