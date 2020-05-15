# Lenovo-Miix-720-Hackintosh
 EFI Files for MIix720 Hack
引导及版本：OpenCore 0.58 Realese（更新引导）

## **配置：**
| 类别 | 详情 |
| :---: | :---- |
| 型号 | Lenovo Miix 720 12IKB (MIIX5 Pro) |
| CPU | Intel Core i5 7200U |
| GPU | Intel HD620 |
| RAM | 8G |
| 网卡 | BCM94352Z(DW1560) |
| 触摸板 | Synaptics USBHID 具体型号未知 |
| 触摸屏 | WACOM 5099 |
| 声卡 | ALC236 |
| 硬盘 | 西数黑盘SN720 1T |
| 显示器 | 12.2‘ 2880*1920 |
| BIOS | 3SEC71WW |
| 系统信息 | Windows 10 / Catalina 10.15.4 |

---
## **更改记录：**

*2020/5/15* **V2.0发布**
1. boot-args增加`brcmfx-country=NZL`使WIFI支持更多频段（之前未发现不能识别WIFI，今天发现了就增加上）
2. 剩下的2/4-6问题目前看我是解决不了了，但应该不太影响正常使用。所以，姑且以该版本发布V2.0，后续将以常规维护为主。
3. 更改日志独立成文档[Changelog.md](https://github.com/jennie26/Lenovo-Miix-720-Hackintosh/blob/master/Changelog.md)

---
## **正常：**
1. 三卡及蓝牙
2. 电量及电源适配器（实时更新电量百分比、电源插入状态）
3. 触摸屏
4. SD读卡器
5. 前置摄像头
6. iMessage及FaceTime

## **不正常：**
1. ~~二阶段黑屏~~（*5/14似乎已解决，目前重启10来次暂未重现问题*)
2. *电池供电时*合盖睡眠仅能实现第一次，第二次无效 （远景[@sukka](skk.moe)提出该问题为无法继续触发EC Query，暂时无解决方案反馈）
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
            Store (One, ECOK) //结构类似白果，也是arg0=0x3就ECOK=arg0
        }
        xxxxxxx
    }
    Method (_STA)
    {
        If (ECOK) //类似白果判断
        {
            Return (0x1F)
        }
        xxxx
    }
```
即使将语句改为如上内容，仍然无法显示电量/电源状态，这个地方需要求助。

---

## 感谢
- [@Acidanthera](https://github.com/acidanthera/) 大神提供维护的Opencore/Lilu套件等
- @gongzhen 在10.12/10.13版本时分享的EFI，以及在tonymacx86与R神的交流，减少了我很多折腾。
- [@acai66](https://github.com/acai66/) 提供的VoodooI2CHID修改避免与触摸板冲突方法
- [@penghubingzhou](penghubingzhou.cn) 提供的VoodooI2C教程，以驱动触摸屏
- [@RehabMan](https://github.com/RehabMan/) 的各项教程
- [@daliansky](https://github.com/daliansky/) 共享的OC-little
- @宪武 宪武大大维护的OC-little
- 以及其他未列出的开发者
