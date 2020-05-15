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
