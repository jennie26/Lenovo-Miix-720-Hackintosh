# Lenovo-Miix-720-Hackintosh
 EFI Files for MIix720 Hack
引导及版本：Clover 5097 / OpenCore 0.56 MOD

配置：
CPU：  Intel i5 7200U
GPU：  Intel HD620
内存：  8G
硬盘：  西部数据M.2 NVMe黑盘 1T
BIOS版本：  3SEC71WW （已通过ru.efi关闭CFG Lock）
系统信息： Windows 10 / Catalina 10.15.3

更改记录：
2020/3/9
1.OC下删除SSDT-SDCX.aml及SSDT的注入，事实证明驱动读卡器仅需要d注入Device Properties即可。
2.电池驱动换回ACPIBatteryManager，暂时实现电量显示。

已解决问题：
1. 随机禁行（添加boot-arg:slide=1后暂未再现，观察）；
2. 未安装触摸屏补丁（已驱动，注入GPI0及TSCX的SSDT）

存在问题：
1. 
2. 二阶段黑屏，需合盖再开方能亮屏。（亮度调节后出现的问题）
3. 输入密码后进桌面键盘会丢失，需重新插拔。
4. 
5. 触摸板仅实现单指功能。
6. 切换VirtualSMC后，还未能完善电池补丁，电池不显示。
7. 睡眠不正常
8. 切换OC后其他未实现功能～
