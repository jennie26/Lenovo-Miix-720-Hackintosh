# Lenovo-Miix-720-Hackintosh
 EFI Files for MIix720 Hack
引导及版本：OpenCore 0.58 Realese（更新引导）

*2020/4/7*
1. 删除长久未更新的Clover引导，并将OC版本目录调整为EFI，更新OC为最新0.57Realese
2. 二阶段黑屏证实未解决

*2020/4/23*
1. 同步EFI中所有文件，避免增量时错误；
2. 增加RTCMemoryFixup，修复时间错误；
3. cfglock相关quirks默认设置为true。

*2020/5/5* **V1.0.2发布**
1. 更新OpenCore至0.58正式版；
2. 更新lilu套件至当前最新版；
3. 添加GLAN/XDCI秒醒SSDT。

*2020/5/7*
1. 更新VoodooI2C至2.4.2；

*2020/5/9*
1. 因发现被[黑果小兵](https://github.com/daliansky/)收录，完善Readme
2. 合并仿冒及无需更名SSDT，简化config-ACPI-ADD；

*2020/5/14*
1. 修改`Method (_REG)`，将LIDS赋值语句调整到`If (arg0 == 0x3)`后，解决二阶段黑屏问题
2. README关于显示器分辨率及声卡信息的修订；

*2020/5/15* **V2.0发布**
1. boot-args增加`brcmfx-country=NZL`使WIFI支持更多频段（之前未发现不能识别WIFI，今天发现了就增加上）
2. 剩下的2/4-6问题目前看我是解决不了了，但应该不太影响正常使用。所以，姑且以该版本发布V2.0，后续将以常规维护为主。
3. 更改日志独立成文档[Changelog.md](https://github.com/jennie26/Lenovo-Miix-720-Hackintosh/blob/master/Changelog.md)

*2020/10/13*
1. 更新OC版本至0.62正式版
2. 更新lilu套件至最新正式版
3. 更新Big Sur支持
4. 暂删除voodooI2C的触屏支持
