/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-5-ssdtfile.aml, Mon Feb 10 12:44:08 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000330 (816)
 *     Revision         0x01
 *     Checksum         0x1F
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "ssdtfile"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "ssdtfile", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C2, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.I2C2)
    {
        Device (CAM6)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3479")  // _HID: Hardware ID
            Name (_CID, "INT3479")  // _CID: Compatible ID
            Name (_DDN, "OV5670-CRDG")  // _DDN: DOS Device Name
            Name (_UID, "0")  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C2.PMIC
            })
            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x69, 0x0E, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0036, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (SBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (SSDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x6C)
                {
                    /* 0000 */  0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00,
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
                    /* 0050 */  0x09, 0x00, 0x02, 0x00, 0x00, 0x01, 0x00, 0xF8,
                    /* 0058 */  0x24, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0068 */  0x00, 0x00, 0x00, 0x00                         
                })
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                {
                    Return ("CJAG514")
                }

                If (LEqual (Arg0, ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If (LEqual (Arg2, One))
                    {
                        Return (0x02)
                    }

                    If (LEqual (Arg2, 0x02))
                    {
                        Return (0x02003600)
                    }

                    If (LEqual (Arg2, 0x03))
                    {
                        Return (0x02000C01)
                    }
                }

                Return (Zero)
            }
        }

        Device (PMIC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Name (_UID, "0")  // _UID: Unique ID
            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x21, 0x0D, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x004D, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (SBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x02, 0x01, 0x30, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If (LEqual (Arg2, One))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg2, 0x02))
                    {
                        Return (0x02004D0B)
                    }
                }

                Return (Zero)
            }
        }
    }
}

