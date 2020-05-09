# Lenovo-Miix-720-Hackintosh
 EFI Files for MIix720 Hack
引导及版本：OpenCore 0.58 Realese（更新引导）

## **配置：**
- CPU：  Intel i5 7200U
- GPU：  Intel HD620
- 内存：  8G
- 硬盘：  西部数据M.2 NVMe黑盘 1T
- BIOS版本：  3SEC71WW （已通过ru.efi关闭CFG Lock(0x3c)设置为0）
- 系统信息： Windows 10 / Catalina 10.15.4
- 网卡：BCM94352Z

---
## **更改记录：**

*2020/5/9*
1. 合并仿冒及无需更名SSDT，简化config-ACPI-ADD；
2. 

---
## **正常：**
1. 三卡及蓝牙
2. 电量及电源适配器（实时更新电量百分比、电源插入状态）
3. 触摸屏
4. SD读卡器
5. 前置摄像头
6. iMessage及FaceTime

## **不正常：**
1. 二阶段黑屏
2. *电池供电时*合盖睡眠仅能实现第一次，第二次无效
3. ~~偶尔出现GLAN/XHCI秒醒~~（已解决）
4. 重力感应
5. 触摸板（仅能进行单指操作，仿佛无解）
6. 输密码进入桌面后键盘丢失，需重新插拔
7. 核显驱动不完全（远景用户更换其他版本lilu及weg可解决）

---
## 注意事项
1. VoodooI2C版本更新、新安装后，建议**重建缓存**。如出现卡voodooI2CHID，建议先false掉kext的加载，进系统后重建缓存。
2. VoodooI2CHID会加载触摸板，版本更新时必须将`VoodooI2CHID->contents->info.plist`中`VoodooI2CHIDDevice Multitouch HID Event Driver`项删除，否则触摸板失效。

---
## **折腾中未弄明白项：** Method (_REG)影响BAT0/ADP0/LID0的(_STA)函数返回正常值。
具体：
EFI中SSDT-OC-BATT有对以上三个设备(_STA)的改写，全部改写成返回0x1F/0F等直接有效的值。
如果不改，未能使设备有效。
```
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
```
即使将语句改为如上内容，仍然无法显示电量/电源状态，这个地方需要求助。

---
**历史更改记录：**

*2020/4/7*
1. 删除长久未更新的Clover引导，并将OC版本目录调整为EFI，更新OC为最新0.57Realese
2. 二阶段黑屏证实未解决

*2020/4/23*
1. 同步EFI中所有文件，避免增量时错误；
2. 增加RTCMemoryFixup，修复时间错误；
3. cfglock相关quirks默认设置为true。

*2020/5/5*
1. 更新OpenCore至0.58正式版；
2. 更新lilu套件至当前最新版；
3. 添加GLAN/XDCI秒醒SSDT。

*2020/5/7*
1. 更新VoodooI2C至2.4.2；
