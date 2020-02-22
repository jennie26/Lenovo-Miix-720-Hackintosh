/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3-WmiTable.aml, Mon Feb 10 12:44:08 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002D2C (11564)
 *     Revision         0x02
 *     Checksum         0x5D
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "WmiTable"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "WmiTable", 0x00001000)
{
    Scope (\_SB)
    {
        Device (WMI6)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, "BWMI")  // _UID: Unique ID
            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (BNVS, SystemMemory, 0x5BD81000, 0xD0)
            Field (BNVS, AnyAcc, NoLock, Preserve)
            {
                IPDB,   272, 
                ICHP,   272, 
                INHP,   272, 
                PWDT,   8, 
                PSWI,   8, 
                ENCO,   8, 
                ENC1,   8, 
                LANG,   8, 
                SCUI,   200, 
                SCUC,   8, 
                TEMP,   8, 
                SETF,   8, 
                LDDF,   8, 
                BSCU,   8, 
                BORD,   32, 
                TBRD,   32, 
                PBRD,   32, 
                BCNT,   8, 
                WMSM,   8, 
                SWSB,   8, 
                RTNC,   32, 
                TMP0,   16, 
                TMP1,   16, 
                TMP2,   16, 
                TMP3,   16, 
                TMP4,   16, 
                TMP5,   16, 
                TMP6,   16, 
                TMP7,   16, 
                TMP8,   32, 
                STR0,   128, 
                STR1,   128
            }

            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0xC5, 0x79, 0xBD, 0xC6, 0xD1, 0xE4, 0xF5, 0x4E,
                /* 0008 */  0x89, 0x8F, 0x0F, 0xD9, 0x45, 0x77, 0xD5, 0x47,
                /* 0010 */  0x41, 0x30, 0x14, 0x05, 0x89, 0xA8, 0x0D, 0x4D,
                /* 0018 */  0x6D, 0x2B, 0xA2, 0x42, 0x9D, 0xAF, 0x45, 0x56,
                /* 0020 */  0xE9, 0x6C, 0x77, 0x53, 0x41, 0x31, 0x01, 0x05,
                /* 0028 */  0xDA, 0x4A, 0xA1, 0x71, 0x46, 0xB2, 0xAB, 0x41,
                /* 0030 */  0x89, 0xE5, 0x6C, 0xB4, 0x1D, 0x06, 0xB1, 0xB3,
                /* 0038 */  0x41, 0x42, 0x01, 0x06, 0x7D, 0xC4, 0x22, 0x34,
                /* 0040 */  0x60, 0xB3, 0x21, 0x46, 0x89, 0xB1, 0xBC, 0x92,
                /* 0048 */  0xF5, 0x0C, 0x37, 0xFE, 0x41, 0x43, 0x01, 0x06,
                /* 0050 */  0x90, 0x24, 0xF7, 0x97, 0x15, 0x8F, 0xE8, 0x4A,
                /* 0058 */  0xB6, 0x24, 0xCB, 0x55, 0xD3, 0x04, 0x98, 0xE5,
                /* 0060 */  0x41, 0x44, 0x01, 0x06, 0x75, 0x43, 0xE9, 0x8F,
                /* 0068 */  0x5F, 0x2A, 0xB2, 0x49, 0xB1, 0x8F, 0x96, 0x66,
                /* 0070 */  0xC1, 0xA4, 0xD1, 0x58, 0x41, 0x45, 0x01, 0x06,
                /* 0078 */  0x66, 0xCD, 0xCA, 0x0A, 0xD5, 0x93, 0xC6, 0x4B,
                /* 0080 */  0xA8, 0x7A, 0x5D, 0xAA, 0xC5, 0x15, 0x3C, 0xEC,
                /* 0088 */  0x41, 0x46, 0x01, 0x06, 0xE5, 0x3F, 0x53, 0x10,
                /* 0090 */  0x85, 0xEB, 0x2F, 0x47, 0xAF, 0x56, 0x9C, 0x94,
                /* 0098 */  0xA4, 0x95, 0x0C, 0x7C, 0x41, 0x32, 0x01, 0x06,
                /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 00B0 */  0x42, 0x44, 0x01, 0x00                         
            })
            Name (SITM, Package (0x15)
            {
                "Wireless LAN", 
                "Cool Mode", 
                "Bluetooth", 
                "Power Beep", 
                "Intel Virtual Technology", 
                "BIOS Back Flash", 
                "Always On USB", 
                "DPTF", 
                "On Screen Keyboard", 
                "TBT Security Level", 
                "Intel Platform Trust", 
                "TPM function", 
                "Secure Boot", 
                "Intel SGX", 
                "Boot Mode", 
                "Fast Boot", 
                "USB Boot", 
                "PXE Boot to LAN", 
                "OS Optimized Default", 
                "BootOrder", 
                "Password"
            })
            Name (SITV, Package (0x15)
            {
                Package (0x02)
                {
                    "Wireless LAN;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "Cool Mode;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "Bluetooth;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "Power Beep;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "Intel Virtual Technology;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "BIOS Back Flash;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "Always On USB;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "DPTF;", 
                    "Enable, Disable"
                }, 

                Package (0x02)
                {
                    "On Screen Keyboard;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "TBT Security Level;", 
                    "No Security,User Authorization"
                }, 

                Package (0x02)
                {
                    "Intel Platform Trust;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "TPM function;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "Secure Boot;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "Intel SGX;", 
                    "Enable,Disable,Software Controlled"
                }, 

                Package (0x02)
                {
                    "Boot Mode;", 
                    "UEFI,Legacy Support"
                }, 

                Package (0x02)
                {
                    "Fast Boot;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "USB Boot;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "PXE Boot to LAN;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "OS Optimized Default;", 
                    "Enable,Disable"
                }, 

                Package (0x02)
                {
                    "BootOrder;", 
                    "EFI_SATA,EFI_USB_FDD,EFI_DVD,EFI_USB_HDD,EFI_PXE,EFI_IPV4,EFI_IPV6"
                }, 

                Package (0x02)
                {
                    "Password;", 
                    "Administrator Password,User Password"
                }
            })
            Name (EAD0, "Wireless LAN,Enable")
            Name (DAD0, "Wireless LAN,Disable")
            Name (EAA2, "Cool Mode,Enable")
            Name (DAA2, "Cool Mode,Disable")
            Name (EAD1, "Power Beep,Enable")
            Name (DAD1, "Power Beep,Disable")
            Name (EAD2, "Intel Virtual Technology,Enable")
            Name (DAD2, "Intel Virtual Technology,Disable")
            Name (EAD3, "BIOS Back Flash,Enable")
            Name (DAD3, "BIOS Back Flash,Disable")
            Name (EAA3, "Always On USB,Enable")
            Name (DAA3, "Always On USB,Disable")
            Name (EAD4, "DPTF,Enable")
            Name (DAD4, "DPTF,Disable")
            Name (EAA0, "On Screen Keyboard,Enable")
            Name (DAA0, "On Screen Keyboard,Disable")
            Name (NOSE, "TBT Security Level,No Security")
            Name (AUTH, "TBT Security Level,User Authorization")
            Name (EAA1, "Bluetooth,Enable")
            Name (DAA1, "Bluetooth,Disable")
            Name (EAA4, "Intel SGX,Enable")
            Name (DAA4, "Intel SGX,Disable")
            Name (SAA4, "Intel SGX,Software Controlled")
            Name (EAD5, "Intel Platform Trust,Enable")
            Name (DAD5, "Intel Platform Trust,Disable")
            Name (EADF, "TPM function,Enable")
            Name (DADF, "TPM function,Disable")
            Name (EAD6, "Clear Intel PTT Key,Enter")
            Name (EAD7, "Secure Boot,Enable")
            Name (DAD7, "Secure Boot,Disable")
            Name (EAD8, "Reset to Setup Mode,Enter")
            Name (EAD9, "Restore Factory Keys,Enter")
            Name (EADA, "Boot Mode,UEFI")
            Name (DADA, "Boot Mode,Legacy Support")
            Name (EADB, "Fast Boot,Enable")
            Name (DADB, "Fast Boot,Disable")
            Name (EADC, "USB Boot,Enable")
            Name (DADC, "USB Boot,Disable")
            Name (EADD, "PXE Boot to LAN,Enable")
            Name (DADD, "PXE Boot to LAN,Disable")
            Name (EADE, "OS Optimized Default,Enable")
            Name (DADE, "OS Optimized Default,Disable")
            Name (INVD, "Invalid Data")
            Name (PSET, Buffer (0x18){})
            Method (TSMI, 1, Serialized)
            {
                Store (ToInteger (Arg0), SWSB)
                Store (0xCE, IOB2)
            }

            Method (WQA0, 1, Serialized)
            {
                Store (Zero, SETF)
                If (LEqual (Arg0, Zero))
                {
                    Store ("Wireless LAN", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAD0)
                    }

                    Return (EAD0)
                }

                If (LEqual (Arg0, One))
                {
                    Store ("Power Beep", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAD1)
                    }

                    Return (EAD1)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Store ("Intel Virtual Technology", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAD2)
                    }

                    Return (EAD2)
                }

                If (LEqual (Arg0, 0x03))
                {
                    Store ("BIOS Back Flash", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAD3)
                    }

                    Return (EAD3)
                }

                If (LEqual (Arg0, 0x04))
                {
                    Store ("DPTF", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAD4)
                    }

                    Return (EAD4)
                }

                If (LEqual (Arg0, 0x05))
                {
                    Store ("TPM function", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAD5)
                    }

                    Return (EAD5)
                }

                If (LEqual (Arg0, 0x06))
                {
                    Store ("Secure Boot", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAD7)
                    }

                    Return (EAD7)
                }

                If (LEqual (Arg0, 0x07))
                {
                    Store ("Boot Mode", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DADA)
                    }

                    Return (EADA)
                }

                If (LEqual (Arg0, 0x08))
                {
                    Store ("Fast Boot", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DADB)
                    }

                    Return (EADB)
                }

                If (LEqual (Arg0, 0x09))
                {
                    Store ("USB Boot", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (EADC)
                    }

                    Return (DADC)
                }

                If (LEqual (Arg0, 0x0A))
                {
                    Store ("PXE Boot to LAN", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DADD)
                    }

                    Return (EADD)
                }

                If (LEqual (Arg0, 0x0B))
                {
                    Store ("OS Optimized Default", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (EADE)
                    }

                    Return (DADE)
                }

                If (LEqual (Arg0, 0x0C))
                {
                    Store ("BootOrder", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    Store ("BootOrder,", Local0)
                    Store (Zero, Local1)
                    Store (BCNT, Local2)
                    While (Local2)
                    {
                        Store (And (ShiftRight (BORD, Local1), 0x0F), Local3)
                        Switch (ToInteger (Local3))
                        {
                            Case (One)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "EFI_SATA", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "EFI_SATA:", Local0)
                                }
                            }
                            Case (0x03)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "EFI_USB_FDD", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "EFI_USB_FDD:", Local0)
                                }
                            }
                            Case (0x04)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "EFI_DVD", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "EFI_DVD:", Local0)
                                }
                            }
                            Case (0x05)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "EFI_USB_HDD", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "EFI_USB_HDD:", Local0)
                                }
                            }
                            Case (0x06)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "EFI_PXE", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "EFI_PXE:", Local0)
                                }
                            }
                            Case (0x09)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "SATA", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "SATA:", Local0)
                                }
                            }
                            Case (0x0A)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "USB", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "USB:", Local0)
                                }
                            }
                            Case (0x0B)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "DVD", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "DVD:", Local0)
                                }
                            }
                            Case (0x07)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "EFI_IPV4", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "EFI_IPV4:", Local0)
                                }
                            }
                            Case (0x08)
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "EFI_IPV6", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "EFI_IPV6:", Local0)
                                }
                            }
                            Default
                            {
                                If (LEqual (Local2, One))
                                {
                                    Concatenate (Local0, "Unknown", Local0)
                                }
                                Else
                                {
                                    Concatenate (Local0, "Unknown:", Local0)
                                }
                            }

                        }

                        Decrement (Local2)
                        Add (Local1, 0x04, Local1)
                    }

                    Return (Local0)
                }

                If (LEqual (Arg0, 0x0D))
                {
                    Store ("TPM function", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DADF)
                    }

                    Return (EADF)
                }

                If (LEqual (Arg0, 0x0E))
                {
                    Store ("Bluetooth", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAA1)
                    }

                    Return (EAA1)
                }

                If (LEqual (Arg0, 0x0F))
                {
                    Store ("On Screen Keyboard", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAA0)
                    }

                    Return (EAA0)
                }

                If (LEqual (Arg0, 0x10))
                {
                    Store ("Cool Mode", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAA2)
                    }

                    Return (EAA2)
                }

                If (LEqual (Arg0, 0x11))
                {
                    Store ("Always On USB", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAA3)
                    }

                    Return (EAA3)
                }

                If (LEqual (Arg0, 0x12))
                {
                    Store ("Intel SGX", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (DAA4)
                    }
                    ElseIf (LEqual (SCUC, One))
                    {
                        Return (EAA4)
                    }
                    Else
                    {
                        Return (SAA4)
                    }
                }

                If (LEqual (Arg0, 0x13))
                {
                    Store ("TBT Security Level", SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LEqual (SCUC, Zero))
                    {
                        Return (NOSE)
                    }

                    If (LEqual (SCUC, One))
                    {
                        Return (AUTH)
                    }
                    Else
                    {
                        Return (INVD)
                    }
                }

                Return (INVD)
            }

            Method (WQA1, 1, NotSerialized)
            {
                Store (One, Index (PSET, Zero))
                TSMI (0x05)
                Store (PSWI, Index (PSET, 0x04))
                Store (One, Index (PSET, 0x08))
                Store (0x10, Index (PSET, 0x0C))
                Store (0x03, Index (PSET, 0x10))
                Store (0x07, Index (PSET, 0x14))
                Return (PSET)
            }

            Name (STRG, Buffer (0x64){})
            Method (CPAR, 1, NotSerialized)
            {
                Store (Zero, Local0)
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, Zero))
                {
                    Return (0x80000002)
                }

                If (LNotEqual (ObjectType (Arg0), 0x02))
                {
                    Return (0x80000002)
                }

                If (LGreaterEqual (Local0, 0x63))
                {
                    Return (0x80000002)
                }

                Store (Arg0, STRG)
                Decrement (Local0)
                Store (DerefOf (Index (STRG, Local0)), Local1)
                If (LNotEqual (Local1, 0x3B))
                {
                    Return (0x80000002)
                }

                Return (Zero)
            }

            Method (CITM, 2, NotSerialized)
            {
                Name (STR0, Buffer (0x1E){})
                Name (STR1, Buffer (0x1E){})
                Store (Arg0, STR0)
                Store (Zero, Local0)
                Store (SizeOf (Arg1), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (Arg1, Local0)), STR1)
                    If (LEqual (ToString (STR0, Ones), ToString (STR1, Ones)))
                    {
                        Return (Zero)
                    }

                    Increment (Local0)
                }

                Return (0x80000002)
            }

            Method (WMAB, 3, NotSerialized)
            {
                Name (ISTR, Buffer (0x64)
                {
                     0x00                                           
                })
                Name (SITE, Buffer (0x1E)
                {
                     0x00                                           
                })
                Name (CVAL, Buffer (0x3C)
                {
                     0x00                                           
                })
                Name (PSWD, Buffer (0x22)
                {
                     0x00                                           
                })
                Name (ENCD, Buffer (0x09)
                {
                     0x00                                           
                })
                Name (KBLG, Buffer (0x03)
                {
                     0x00                                           
                })
                Name (BNME, Buffer (0x0C)
                {
                     0x00                                           
                })
                Store (Arg2, ISTR)
                If (LNotEqual (CPAR (Arg2), Zero))
                {
                    Return ("Invalid Parameter")
                }

                Store (One, SETF)
                Store (Zero, RTNC)
                Store (One, Local1)
                Store (Zero, Local0)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (ISTR, Local0)), Local2)
                    If (LEqual (DerefOf (Index (ISTR, Local0)), 0x3B))
                    {
                        Return ("Invalid Parameter")
                    }

                    If (LEqual (DerefOf (Index (ISTR, Local0)), 0x2C))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (SITE, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LNotEqual (CITM (SITE, SITM), Zero))
                {
                    Return ("Invalid Parameter")
                }

                If (LEqual (ToString (SITE, Ones), "BootOrder"))
                {
                    Store (Zero, Local4)
                    Store (One, Local5)
                    Store (One, Local6)
                    Store (Zero, Local7)
                    Store (Zero, Local3)
                    Store (Zero, Local1)
                    Store (Zero, Local2)
                    Store (Zero, BORD)
                    Store (ToString (SITE, Ones), SCUI)
                    TSMI (0x03)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Not Supported")
                    }

                    Store (Local0, Local4)
                    Increment (Local4)
                    While (Local6)
                    {
                        Store (Zero, Local2)
                        Store (One, Local5)
                        Store ("", BNME)
                        While (Local5)
                        {
                            Store (DerefOf (Index (ISTR, Local4)), Local1)
                            If (LEqual (DerefOf (Index (ISTR, Local4)), 0x3A))
                            {
                                Store (Zero, Local5)
                                Break
                            }

                            If (LOr (LEqual (DerefOf (Index (ISTR, Local4)), 0x2C), LEqual (DerefOf (Index (ISTR, Local4)), 0x3B)))
                            {
                                Store (Zero, Local5)
                                Store (Zero, Local6)
                                Break
                            }

                            Store (Local1, Index (BNME, Local2))
                            Increment (Local2)
                            Increment (Local4)
                        }

                        Increment (Local4)
                        If (LEqual (ToString (BNME, Ones), "EFI_SATA"))
                        {
                            Store (One, Local3)
                            Or (BORD, ShiftLeft (Local3, Local7), BORD)
                            Store (0x02, Local3)
                            Add (Local7, 0x04, Local7)
                            Or (BORD, ShiftLeft (Local3, Local7), BORD)
                        }
                        ElseIf (LEqual (ToString (BNME, Ones), "EFI_USB_FDD"))
                        {
                            Store (0x03, Local3)
                            Or (BORD, ShiftLeft (Local3, Local7), BORD)
                        }
                        ElseIf (LEqual (ToString (BNME, Ones), "EFI_DVD"))
                        {
                            Store (0x04, Local3)
                            Or (BORD, ShiftLeft (Local3, Local7), BORD)
                        }
                        ElseIf (LEqual (ToString (BNME, Ones), "EFI_USB_HDD"))
                        {
                            Store (0x05, Local3)
                            Or (BORD, ShiftLeft (Local3, Local7), BORD)
                        }
                        ElseIf (LEqual (ToString (BNME, Ones), "EFI_PXE"))
                        {
                            Store (0x06, Local3)
                            Or (BORD, ShiftLeft (Local3, Local7), BORD)
                        }
                        ElseIf (LEqual (ToString (BNME, Ones), "EFI_IPV4"))
                        {
                            Store (0x07, Local3)
                            Or (BORD, ShiftLeft (Local3, Local7), BORD)
                        }
                        ElseIf (LEqual (ToString (BNME, Ones), "EFI_IPV6"))
                        {
                            Store (0x08, Local3)
                            Or (BORD, ShiftLeft (Local3, Local7), BORD)
                        }
                        Else
                        {
                            Return ("Invalid Parameter")
                        }

                        Add (Local7, 0x04, Local7)
                    }

                    If (LNotEqual (Local7, Multiply (BCNT, 0x04)))
                    {
                        Return ("Invalid Parameter")
                    }
                }

                Increment (Local0)
                Store (One, Local1)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (ISTR, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (ISTR, Local0)), 0x2C), LEqual (DerefOf (Index (ISTR, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (CVAL, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LNotEqual (DerefOf (Index (ISTR, Local0)), 0x3B))
                {
                    Increment (Local0)
                }

                Store (One, Local1)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (ISTR, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (ISTR, Local0)), 0x2C), LEqual (DerefOf (Index (ISTR, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (PSWD, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LNotEqual (DerefOf (Index (ISTR, Local0)), 0x3B))
                {
                    Increment (Local0)
                }

                Store (One, Local1)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (ISTR, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (ISTR, Local0)), 0x2C), LEqual (DerefOf (Index (ISTR, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (ENCD, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LEqual (DerefOf (Index (ISTR, Local0)), 0x2C))
                {
                    If (LEqual (ToString (ENCD, Ones), "ascii"))
                    {
                        Increment (Local0)
                        Store (One, Local1)
                        Store (Zero, Local3)
                        While (Local1)
                        {
                            Store (DerefOf (Index (ISTR, Local0)), Local2)
                            If (LEqual (DerefOf (Index (ISTR, Local0)), 0x3B))
                            {
                                Store (Zero, Local1)
                                Break
                            }

                            Store (Local2, Index (KBLG, Local3))
                            Increment (Local3)
                            Increment (Local0)
                        }
                    }
                }
                ElseIf (LEqual (DerefOf (Index (ISTR, Local0)), 0x3B)){}
                Else
                {
                    Return ("Invalid Parameter")
                }

                TSMI (0x05)
                If (LEqual (And (PSWI, One), One))
                {
                    If (LEqual (ToString (ENCD, Ones), "ascii"))
                    {
                        Store (Zero, ENC1)
                        If (LEqual (ToString (KBLG, Ones), "us"))
                        {
                            Store (Zero, LANG)
                        }
                        ElseIf (LEqual (ToString (KBLG, Ones), "fr"))
                        {
                            Store (One, LANG)
                        }
                        ElseIf (LEqual (ToString (KBLG, Ones), "gr"))
                        {
                            Store (0x02, LANG)
                        }
                        Else
                        {
                            Return ("Invalid Parameter")
                        }
                    }
                    ElseIf (LEqual (ToString (ENCD, Ones), "scancode"))
                    {
                        Store (One, ENC1)
                    }
                    Else
                    {
                        Return ("Invalid Parameter")
                    }

                    Store (ToString (PSWD, Ones), IPDB)
                    TSMI (One)
                    Store (Zero, IPDB)
                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Access Denied")
                    }
                }

                Store (Zero, LDDF)
                If (LEqual (ToString (CVAL, Ones), "Enable"))
                {
                    Store (One, SCUC)
                }
                ElseIf (LEqual (ToString (CVAL, Ones), "Disable"))
                {
                    Store (Zero, SCUC)
                }
                ElseIf (LEqual (ToString (CVAL, Ones), "Enter"))
                {
                    Store (0x02, SCUC)
                }
                ElseIf (LEqual (ToString (CVAL, Ones), "UEFI"))
                {
                    Store (One, SCUC)
                }
                ElseIf (LEqual (ToString (CVAL, Ones), "Legacy Support"))
                {
                    Store (Zero, SCUC)
                }
                ElseIf (LEqual (ToString (CVAL, Ones), "Software Controlled"))
                {
                    Store (0x02, SCUC)
                }
                ElseIf (LEqual (ToString (CVAL, Ones), "No Security"))
                {
                    Store (Zero, SCUC)
                }
                ElseIf (LEqual (ToString (CVAL, Ones), "User Authorization"))
                {
                    Store (One, SCUC)
                }
                ElseIf (LNotEqual (ToString (SITE, Ones), "BootOrder"))
                {
                    Return ("Invalid Parameter")
                }

                If (LEqual (ToString (SITE, Ones), "USB Boot"))
                {
                    If (LEqual (ToString (CVAL, Ones), "Enable"))
                    {
                        Store (Zero, SCUC)
                    }
                    ElseIf (LEqual (ToString (CVAL, Ones), "Disable"))
                    {
                        Store (One, SCUC)
                    }
                    Else
                    {
                        Return ("Invalid Parameter")
                    }
                }

                If (LEqual (ToString (SITE, Ones), "OS Optimized Default"))
                {
                    If (LEqual (ToString (CVAL, Ones), "Enable"))
                    {
                        Store (Zero, SCUC)
                    }
                    ElseIf (LEqual (ToString (CVAL, Ones), "Disable"))
                    {
                        Store (One, SCUC)
                    }
                    Else
                    {
                        Return ("Invalid Parameter")
                    }
                }

                Store (ToString (SITE, Ones), SCUI)
                TSMI (0x03)
                If (LNotEqual (RTNC, Zero))
                {
                    Return ("Not Supported")
                }

                If (LEqual (ToString (SITE, Ones), "BootOrder"))
                {
                    Store (TBRD, PBRD)
                }
                Else
                {
                    Store (TEMP, BSCU)
                }

                Return ("Success")
            }

            Method (PSWV, 1, NotSerialized)
            {
                Name (PSWM, Buffer (0x1E)
                {
                     0x00                                           
                })
                Name (ENCD, Buffer (0x09)
                {
                     0x00                                           
                })
                Name (KBLG, Buffer (0x03)
                {
                     0x00                                           
                })
                Name (PSWD, Buffer (0x11)
                {
                     0x00                                           
                })
                Store (Arg0, PSWM)
                Store (Zero, RTNC)
                Store (One, Local1)
                Store (Zero, Local0)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (PSWM, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (PSWM, Local0)), 0x2C), LEqual (DerefOf (Index (PSWM, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (PSWD, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LNotEqual (DerefOf (Index (PSWM, Local0)), 0x2C))
                {
                    Return (0x80000002)
                }

                Increment (Local0)
                Store (One, Local1)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (PSWM, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (PSWM, Local0)), 0x2C), LEqual (DerefOf (Index (PSWM, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (ENCD, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LEqual (DerefOf (Index (PSWM, Local0)), 0x2C))
                {
                    If (LEqual (ToString (ENCD, Ones), "ascii"))
                    {
                        Increment (Local0)
                        Store (One, Local1)
                        Store (Zero, Local3)
                        While (Local1)
                        {
                            Store (DerefOf (Index (PSWM, Local0)), Local2)
                            If (LOr (LEqual (DerefOf (Index (PSWM, Local0)), 0x3B), LEqual (Local3, 0x02)))
                            {
                                Store (Zero, Local1)
                                Break
                            }

                            Store (Local2, Index (KBLG, Local3))
                            Increment (Local3)
                            Increment (Local0)
                        }
                    }
                    Else
                    {
                        Return (0x80000002)
                    }
                }
                ElseIf (LEqual (DerefOf (Index (PSWM, Local0)), 0x3B))
                {
                    If (LNotEqual (ToString (ENCD, Ones), "scancode"))
                    {
                        Return (0x80000002)
                    }
                }

                TSMI (0x05)
                If (LEqual (And (PSWI, One), One))
                {
                    If (LEqual (ToString (ENCD, Ones), "ascii"))
                    {
                        Store (Zero, ENC1)
                        If (LEqual (ToString (KBLG, Ones), "us"))
                        {
                            Store (Zero, LANG)
                        }
                        ElseIf (LEqual (ToString (KBLG, Ones), "fr"))
                        {
                            Store (One, LANG)
                        }
                        ElseIf (LEqual (ToString (KBLG, Ones), "gr"))
                        {
                            Store (0x02, LANG)
                        }
                        Else
                        {
                            Return (0x80000002)
                        }
                    }
                    ElseIf (LEqual (ToString (ENCD, Ones), "scancode"))
                    {
                        Store (One, ENC1)
                    }
                    Else
                    {
                        Return (0x80000002)
                    }

                    Store (ToString (PSWD, Ones), IPDB)
                    TSMI (One)
                    Store (Zero, IPDB)
                    Return (Zero)
                }

                Return (Zero)
            }

            Name (ENFG, Zero)
            Method (WMAC, 3, NotSerialized)
            {
                If (LEqual (ENFG, One))
                {
                    Store (Zero, ENFG)
                    Return ("Success")
                }

                TSMI (0x05)
                If (LEqual (And (PSWI, One), One))
                {
                    If (LNotEqual (CPAR (Arg2), Zero))
                    {
                        Return ("Invalid Parameter")
                    }

                    If (LNotEqual (PSWV (Arg2), Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Access Denied")
                    }
                }

                TSMI (0x02)
                Store (Zero, SCUI)
                If (LNotEqual (RTNC, Zero))
                {
                    Return ("Not Supported")
                }

                Store (One, ENFG)
                Return ("Success")
            }

            Method (WMAD, 3, NotSerialized)
            {
                TSMI (0x05)
                If (LEqual (And (PSWI, One), One))
                {
                    If (LNotEqual (CPAR (Arg2), Zero))
                    {
                        Return ("Invalid Parameter")
                    }

                    If (LNotEqual (PSWV (Arg2), Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Access Denied")
                    }
                }

                Store (BSCU, SCUC)
                Store (PBRD, BORD)
                Store (Zero, LDDF)
                Return ("Success")
            }

            Method (WMAE, 3, NotSerialized)
            {
                TSMI (0x05)
                If (LEqual (And (PSWI, One), One))
                {
                    If (LNotEqual (CPAR (Arg2), Zero))
                    {
                        Return ("Invalid Parameter")
                    }

                    If (LNotEqual (PSWV (Arg2), Zero))
                    {
                        Return ("Not Supported")
                    }

                    If (LNotEqual (RTNC, Zero))
                    {
                        Return ("Access Denied")
                    }
                }

                Store (One, LDDF)
                Return ("Success")
            }

            Method (WMAF, 3, NotSerialized)
            {
                Name (PSWC, Buffer (0x37)
                {
                     0x00                                           
                })
                Name (PSWT, Buffer (0x06)
                {
                     0x00                                           
                })
                Name (CPSW, Buffer (0x11)
                {
                     0x00                                           
                })
                Name (NPSW, Buffer (0x11)
                {
                     0x00                                           
                })
                Name (ENCD, Buffer (0x09)
                {
                     0x00                                           
                })
                Name (KBLG, Buffer (0x03)
                {
                     0x00                                           
                })
                Store (Arg2, PSWC)
                If (LNotEqual (CPAR (Arg2), Zero))
                {
                    Return ("Invalid Parameter")
                }

                Store (Zero, RTNC)
                Store (One, Local1)
                Store (Zero, Local0)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (PSWC, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (PSWC, Local0)), 0x2C), LEqual (DerefOf (Index (PSWC, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (PSWT, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LEqual (ToString (PSWT, Ones), "pap"))
                {
                    TSMI (0x05)
                    If (LEqual (And (PSWI, One), Zero))
                    {
                        Return ("Access Denied")
                    }

                    Store (One, PWDT)
                }
                ElseIf (LEqual (ToString (PSWT, Ones), "POP"))
                {
                    TSMI (0x05)
                    If (LEqual (And (PSWI, 0x02), Zero))
                    {
                        Return ("Access Denied")
                    }

                    Store (0x02, PWDT)
                }
                ElseIf (LEqual (ToString (PSWT, Ones), "mhdp1"))
                {
                    TSMI (0x05)
                    If (LEqual (And (PSWI, 0x04), Zero))
                    {
                        Return ("Access Denied")
                    }

                    Store (0x03, PWDT)
                }
                ElseIf (LEqual (ToString (PSWT, Ones), "uhdp1"))
                {
                    TSMI (0x05)
                    If (LEqual (And (PSWI, 0x08), Zero))
                    {
                        Return ("Access Denied")
                    }

                    Store (0x04, PWDT)
                }
                Else
                {
                    Return ("Invalid Parameter")
                }

                If (LNotEqual (DerefOf (Index (PSWC, Local0)), 0x2C))
                {
                    Return ("Invalid Parameter")
                }

                Increment (Local0)
                Store (One, Local1)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (PSWC, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (PSWC, Local0)), 0x2C), LEqual (DerefOf (Index (PSWC, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (CPSW, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LNotEqual (DerefOf (Index (PSWC, Local0)), 0x2C))
                {
                    Return ("Invalid Parameter")
                }

                Increment (Local0)
                Store (One, Local1)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (PSWC, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (PSWC, Local0)), 0x2C), LEqual (DerefOf (Index (PSWC, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (NPSW, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LNotEqual (DerefOf (Index (PSWC, Local0)), 0x2C))
                {
                    Return ("Invalid Parameter")
                }

                Increment (Local0)
                Store (One, Local1)
                Store (Zero, Local3)
                While (Local1)
                {
                    Store (DerefOf (Index (PSWC, Local0)), Local2)
                    If (LOr (LEqual (DerefOf (Index (PSWC, Local0)), 0x2C), LEqual (DerefOf (Index (PSWC, Local0)), 0x3B)))
                    {
                        Store (Zero, Local1)
                        Break
                    }

                    Store (Local2, Index (ENCD, Local3))
                    Increment (Local3)
                    Increment (Local0)
                }

                If (LEqual (DerefOf (Index (PSWC, Local0)), 0x2C))
                {
                    If (LEqual (ToString (ENCD, Ones), "ascii"))
                    {
                        Store (Zero, ENCO)
                        Increment (Local0)
                        Store (One, Local1)
                        Store (Zero, Local3)
                        While (Local1)
                        {
                            Store (DerefOf (Index (PSWC, Local0)), Local2)
                            If (LOr (LEqual (DerefOf (Index (PSWC, Local0)), 0x3B), LEqual (Local3, 0x02)))
                            {
                                Store (Zero, Local1)
                                Break
                            }

                            Store (Local2, Index (KBLG, Local3))
                            Increment (Local3)
                            Increment (Local0)
                        }

                        If (LEqual (ToString (KBLG, Ones), "us"))
                        {
                            Store (Zero, LANG)
                        }
                        ElseIf (LEqual (ToString (KBLG, Ones), "fr"))
                        {
                            Store (One, LANG)
                        }
                        ElseIf (LEqual (ToString (KBLG, Ones), "gr"))
                        {
                            Store (0x02, LANG)
                        }
                        Else
                        {
                            Return ("Invalid Parameter")
                        }
                    }
                    Else
                    {
                        Return ("Invalid Parameter")
                    }
                }
                ElseIf (LEqual (DerefOf (Index (PSWC, Local0)), 0x3B))
                {
                    If (LEqual (ToString (ENCD, Ones), "scancode"))
                    {
                        Store (One, ENCO)
                    }
                    Else
                    {
                        Return ("Invalid Parameter")
                    }
                }
                Else
                {
                    Return ("Invalid Parameter")
                }

                Store (ToString (CPSW, Ones), ICHP)
                Store (ToString (NPSW, Ones), INHP)
                Store ("Password", SCUI)
                TSMI (0x04)
                If (LNotEqual (RTNC, Zero))
                {
                    Return ("Access Denied")
                }

                Return ("Success")
            }

            Method (WMA2, 3, NotSerialized)
            {
                If (LNotEqual (CPAR (Arg2), Zero))
                {
                    Return ("Invalid Parameter")
                }

                Store (SizeOf (SITV), Local0)
                Store (Zero, Local1)
                While (Local0)
                {
                    Store (DerefOf (Index (SITV, Local1)), Local2)
                    Store (DerefOf (Index (Local2, Zero)), Local3)
                    If (LEqual (Local3, Arg2))
                    {
                        Store (DerefOf (Index (Local2, One)), Local4)
                        Return (Local4)
                    }

                    Decrement (Local0)
                    Increment (Local1)
                }

                Return ("Invalid Parameter")
            }

            Name (WQBD, Buffer (0x0894)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x84, 0x08, 0x00, 0x00, 0x5E, 0x37, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x98, 0xC4, 0x9A, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x13, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,
                /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,
                /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,
                /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,
                /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE4, 0x18,
                /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,
                /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,
                /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,
                /* 0098 */  0x40, 0xF2, 0x04, 0xA4, 0x79, 0x5E, 0xB2, 0x3E,
                /* 00A0 */  0x08, 0x0D, 0x81, 0x8D, 0x80, 0x47, 0x93, 0x00,
                /* 00A8 */  0xC2, 0xE2, 0x2C, 0x53, 0x61, 0x60, 0x50, 0x1E,
                /* 00B0 */  0x40, 0x24, 0x67, 0xA8, 0x28, 0x60, 0x7B, 0x9D,
                /* 00B8 */  0x88, 0x86, 0x75, 0x9C, 0x4C, 0x12, 0x1C, 0x6A,
                /* 00C0 */  0x94, 0x96, 0x28, 0xC0, 0xFC, 0xC8, 0x34, 0x91,
                /* 00C8 */  0x63, 0x6B, 0x7A, 0xC4, 0x82, 0x64, 0xD2, 0x86,
                /* 00D0 */  0x82, 0x1A, 0xBA, 0xA7, 0x75, 0x52, 0x9E, 0x68,
                /* 00D8 */  0xC4, 0x83, 0x32, 0x4C, 0x02, 0x8F, 0x82, 0xA1,
                /* 00E0 */  0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0xA0, 0x28,
                /* 00E8 */  0xC0, 0x93, 0xF0, 0x1C, 0x8B, 0x17, 0x20, 0x7C,
                /* 00F0 */  0xC6, 0xE4, 0x28, 0x10, 0x23, 0x81, 0x8F, 0x04,
                /* 00F8 */  0x96, 0x3A, 0x66, 0xF4, 0x88, 0xC2, 0x05, 0x3C,
                /* 0100 */  0x9F, 0x63, 0x88, 0x1C, 0xF7, 0x50, 0x63, 0x1C,
                /* 0108 */  0x45, 0xE4, 0x04, 0xEF, 0x00, 0x51, 0x8C, 0x56,
                /* 0110 */  0xD0, 0xB0, 0x35, 0xE1, 0x78, 0x11, 0x1E, 0x02,
                /* 0118 */  0x18, 0xD0, 0xB9, 0x47, 0x09, 0xF2, 0xFF, 0x8F,
                /* 0120 */  0x6A, 0xA0, 0x9E, 0x87, 0x40, 0x06, 0x7E, 0x14,
                /* 0128 */  0x18, 0x19, 0x10, 0xF2, 0x28, 0xC0, 0xEA, 0xC0,
                /* 0130 */  0x34, 0x8D, 0x04, 0x76, 0x3F, 0x00, 0x69, 0x9B,
                /* 0138 */  0x83, 0x70, 0x7A, 0x13, 0x60, 0x0E, 0x46, 0x9F,
                /* 0140 */  0x87, 0xB6, 0xA6, 0xA5, 0x99, 0x06, 0x6A, 0x0C,
                /* 0148 */  0x45, 0x20, 0x61, 0x6A, 0x84, 0x22, 0xE2, 0xF0,
                /* 0150 */  0x04, 0x11, 0x26, 0xCA, 0xCB, 0x43, 0x8C, 0x78,
                /* 0158 */  0x71, 0xC2, 0x05, 0x0B, 0x1D, 0x21, 0x4C, 0x90,
                /* 0160 */  0x30, 0x41, 0xDA, 0x1F, 0x04, 0x19, 0x38, 0xEE,
                /* 0168 */  0x04, 0xE0, 0x13, 0xC3, 0x99, 0x9D, 0xDF, 0x13,
                /* 0170 */  0xC0, 0xD3, 0x82, 0x09, 0x3C, 0xED, 0x03, 0x7B,
                /* 0178 */  0x3E, 0x38, 0x82, 0xE3, 0x8D, 0x1A, 0xE3, 0x0C,
                /* 0180 */  0x12, 0x38, 0xFE, 0x23, 0x42, 0x1A, 0x40, 0x14,
                /* 0188 */  0x09, 0x1E, 0x75, 0x62, 0xF0, 0xD9, 0xC0, 0x43,
                /* 0190 */  0x3B, 0x70, 0xCF, 0xF1, 0x04, 0x82, 0x1C, 0xC2,
                /* 0198 */  0x11, 0x3C, 0x35, 0x3C, 0x14, 0x78, 0x0C, 0xEC,
                /* 01A0 */  0xB6, 0xE0, 0x63, 0x80, 0x4F, 0x09, 0x78, 0xD7,
                /* 01A8 */  0x80, 0xBA, 0x1E, 0x3C, 0x1C, 0xB0, 0x41, 0x87,
                /* 01B0 */  0xC3, 0x8C, 0xD7, 0x43, 0xF7, 0x04, 0x9E, 0x0D,
                /* 01B8 */  0x1E, 0x32, 0xF8, 0x81, 0xC3, 0x83, 0xC3, 0x4D,
                /* 01C0 */  0xF8, 0x64, 0x8E, 0xEC, 0x8D, 0xA0, 0xD9, 0x03,
                /* 01C8 */  0x82, 0x0E, 0x13, 0x3E, 0x71, 0xB0, 0x33, 0x00,
                /* 01D0 */  0x46, 0xFE, 0x20, 0x50, 0x23, 0x33, 0xB4, 0xCF,
                /* 01D8 */  0x15, 0x2F, 0x1E, 0x86, 0x7C, 0x56, 0x38, 0x2C,
                /* 01E0 */  0x26, 0xF6, 0xE4, 0x41, 0xC7, 0x03, 0xFE, 0x0B,
                /* 01E8 */  0xC9, 0xB3, 0x86, 0xA7, 0xEF, 0xF9, 0xFA, 0x80,
                /* 01F0 */  0xC2, 0x06, 0x8E, 0x1B, 0x88, 0xEF, 0x0B, 0xD8,
                /* 01F8 */  0xF3, 0x02, 0xE6, 0xFF, 0x3F, 0x38, 0x1E, 0x6D,
                /* 0200 */  0xE4, 0xF4, 0xA0, 0xE2, 0x13, 0x05, 0x3F, 0x5E,
                /* 0208 */  0xF8, 0x44, 0xC1, 0xCE, 0x07, 0xA7, 0xF1, 0x1C,
                /* 0210 */  0xE0, 0xE1, 0x9C, 0x95, 0x0F, 0x14, 0x60, 0xBB,
                /* 0218 */  0xA3, 0xB0, 0x03, 0x05, 0x38, 0x4E, 0x02, 0xE0,
                /* 0220 */  0x3B, 0xC7, 0x80, 0xF3, 0xCE, 0xC1, 0xC6, 0x03,
                /* 0228 */  0xE3, 0x1C, 0x03, 0x3C, 0x4E, 0x09, 0x1E, 0x02,
                /* 0230 */  0x3F, 0x4C, 0x78, 0x08, 0x7C, 0x00, 0xCF, 0x20,
                /* 0238 */  0x67, 0x68, 0xA5, 0xF3, 0x42, 0x0E, 0x0C, 0xDE,
                /* 0240 */  0x79, 0x07, 0xC6, 0x28, 0x78, 0x9E, 0x07, 0x87,
                /* 0248 */  0x09, 0x14, 0xE4, 0x45, 0xA0, 0x50, 0x4F, 0x03,
                /* 0250 */  0x0A, 0xE3, 0xD3, 0x0D, 0x78, 0xFF, 0xFF, 0xA7,
                /* 0258 */  0x1B, 0xE0, 0x7A, 0x38, 0xC0, 0x9D, 0x1E, 0xE0,
                /* 0260 */  0xDE, 0x0B, 0xD8, 0xC5, 0xE1, 0xF9, 0x06, 0x73,
                /* 0268 */  0x38, 0x80, 0x21, 0xFA, 0x6C, 0x03, 0xF5, 0x24,
                /* 0270 */  0xF3, 0x54, 0xF3, 0x22, 0x10, 0xE2, 0x20, 0x63,
                /* 0278 */  0x44, 0x0A, 0xF1, 0x4C, 0x73, 0x0A, 0x95, 0xE1,
                /* 0280 */  0xE8, 0x80, 0xF3, 0x6A, 0x63, 0x38, 0x03, 0xBD,
                /* 0288 */  0xDA, 0xB0, 0xA1, 0x3D, 0xDD, 0x18, 0xEC, 0xA9,
                /* 0290 */  0x20, 0x52, 0x34, 0xE3, 0x3E, 0x51, 0xBC, 0xE9,
                /* 0298 */  0x18, 0x25, 0x44, 0x67, 0x47, 0x1B, 0x10, 0x8B,
                /* 02A0 */  0x79, 0xA5, 0xC8, 0xC2, 0xD1, 0x06, 0xD0, 0xF4,
                /* 02A8 */  0xFF, 0x3F, 0xDA, 0x00, 0x77, 0xAC, 0x07, 0x14,
                /* 02B0 */  0xF0, 0x1D, 0x19, 0xD8, 0x0D, 0x05, 0xDE, 0x09,
                /* 02B8 */  0x05, 0xF0, 0x93, 0xF8, 0x05, 0xA0, 0x23, 0x87,
                /* 02C0 */  0xD3, 0x82, 0xC8, 0xC6, 0x1B, 0xC0, 0xA7, 0x00,
                /* 02C8 */  0xAA, 0x06, 0x48, 0xD3, 0x84, 0x4D, 0x30, 0x3D,
                /* 02D0 */  0xB9, 0xE0, 0x7D, 0x24, 0x70, 0x6E, 0x12, 0x25,
                /* 02D8 */  0x1F, 0x16, 0x85, 0x73, 0xD6, 0x83, 0x08, 0x05,
                /* 02E0 */  0x31, 0xA0, 0x83, 0x1C, 0x27, 0xD0, 0x67, 0x14,
                /* 02E8 */  0x1F, 0x44, 0x4E, 0xF4, 0xC9, 0xD0, 0x83, 0xF2,
                /* 02F0 */  0x30, 0xDE, 0x51, 0xD8, 0x09, 0xC4, 0xFF, 0xFF,
                /* 02F8 */  0xC3, 0x84, 0xC7, 0xEE, 0x63, 0x02, 0xFF, 0xC7,
                /* 0300 */  0x78, 0x36, 0x46, 0xB7, 0x9A, 0x73, 0x0A, 0x0A,
                /* 0308 */  0xCC, 0x07, 0x11, 0x4E, 0x50, 0xD7, 0x4D, 0x02,
                /* 0310 */  0x64, 0xFA, 0x8E, 0x0A, 0xA0, 0x00, 0xF2, 0xBD,
                /* 0318 */  0xC0, 0xE7, 0x80, 0x67, 0x03, 0x36, 0x86, 0x47,
                /* 0320 */  0x01, 0xA3, 0x19, 0x9D, 0x87, 0x9F, 0x2C, 0x2A,
                /* 0328 */  0xEE, 0x64, 0x29, 0x88, 0x27, 0xEB, 0x28, 0x93,
                /* 0330 */  0x45, 0xCF, 0xC4, 0xF7, 0x0A, 0xCF, 0xE8, 0x69,
                /* 0338 */  0xCA, 0x73, 0xF4, 0x84, 0x7D, 0x0F, 0x81, 0x75,
                /* 0340 */  0x18, 0x08, 0xF9, 0x60, 0xE0, 0x69, 0x18, 0xCE,
                /* 0348 */  0x93, 0xE5, 0x70, 0x9E, 0x2C, 0x1F, 0x8B, 0xAF,
                /* 0350 */  0x21, 0xE0, 0x13, 0x38, 0x5B, 0x90, 0xC3, 0x63,
                /* 0358 */  0x62, 0x8D, 0x8A, 0x5E, 0x85, 0x3C, 0x3C, 0x7E,
                /* 0360 */  0x39, 0xF0, 0x7C, 0x9E, 0x11, 0x8E, 0xF2, 0x49,
                /* 0368 */  0x02, 0x87, 0xF1, 0x4C, 0xE2, 0x21, 0xFA, 0x56,
                /* 0370 */  0x04, 0x6B, 0x22, 0x27, 0xED, 0xDB, 0xC2, 0xC9,
                /* 0378 */  0x06, 0x7D, 0x45, 0xE3, 0xFF, 0xFF, 0x5B, 0x11,
                /* 0380 */  0x38, 0x2F, 0x69, 0xFC, 0x9C, 0xE4, 0x9B, 0x05,
                /* 0388 */  0x36, 0xD3, 0xBD, 0x0A, 0x15, 0xEB, 0x5E, 0x05,
                /* 0390 */  0x88, 0x1D, 0xD6, 0x6B, 0x8F, 0x0F, 0x56, 0x70,
                /* 0398 */  0xEF, 0x55, 0x70, 0x8F, 0x51, 0xA7, 0xF8, 0x4E,
                /* 03A0 */  0x15, 0xE1, 0x91, 0xE1, 0x9D, 0xD3, 0x50, 0xEF,
                /* 03A8 */  0x55, 0x86, 0x7A, 0x9B, 0x7A, 0x90, 0x78, 0xAF,
                /* 03B0 */  0x32, 0x48, 0xB4, 0x97, 0x50, 0xDF, 0xAB, 0x7C,
                /* 03B8 */  0xA4, 0x32, 0x9E, 0x51, 0xC3, 0xC4, 0x7A, 0x10,
                /* 03C0 */  0x35, 0x64, 0x98, 0xB0, 0xB1, 0xC3, 0xBC, 0x4C,
                /* 03C8 */  0xF8, 0x5E, 0x05, 0x56, 0x39, 0xF7, 0x2A, 0xE4,
                /* 03D0 */  0xFF, 0xFF, 0x5E, 0x05, 0x30, 0xE3, 0xA2, 0x89,
                /* 03D8 */  0xBB, 0x57, 0x81, 0xE7, 0xDA, 0xC0, 0x6E, 0x48,
                /* 03E0 */  0xB0, 0x80, 0x5E, 0xAC, 0x00, 0x27, 0xFF, 0xFF,
                /* 03E8 */  0x8B, 0x15, 0x36, 0xF3, 0xC5, 0x8A, 0xE6, 0xBD,
                /* 03F0 */  0x58, 0xA1, 0xCE, 0x25, 0xD6, 0x73, 0xB1, 0x22,
                /* 03F8 */  0xF3, 0x84, 0x7F, 0xB3, 0x02, 0x38, 0xFB, 0xFF,
                /* 0400 */  0xBF, 0x59, 0x01, 0x46, 0xEF, 0x45, 0x98, 0xA3,
                /* 0408 */  0x15, 0xBC, 0x94, 0x37, 0x2B, 0x1A, 0x67, 0x19,
                /* 0410 */  0x0A, 0xB8, 0x20, 0x0A, 0xE3, 0x9B, 0x15, 0xE0,
                /* 0418 */  0xE8, 0xBA, 0x82, 0x1B, 0x32, 0x5C, 0xB0, 0x28,
                /* 0420 */  0xC1, 0x7C, 0x08, 0xF1, 0x74, 0xDE, 0xC7, 0x7D,
                /* 0428 */  0x09, 0x78, 0xCC, 0xF1, 0x80, 0x1F, 0x08, 0x7C,
                /* 0430 */  0xB9, 0xC2, 0xFC, 0xFF, 0x2F, 0x57, 0xE0, 0x38,
                /* 0438 */  0x3E, 0xBD, 0x4C, 0x19, 0xE2, 0x09, 0xD8, 0x30,
                /* 0440 */  0x8F, 0x56, 0xBE, 0x57, 0x05, 0x7A, 0xAE, 0x7A,
                /* 0448 */  0xFE, 0xF5, 0x49, 0xD8, 0x53, 0x0B, 0xF4, 0x68,
                /* 0450 */  0xE5, 0xF3, 0x95, 0x81, 0xA2, 0xBC, 0x03, 0x1B,
                /* 0458 */  0x2E, 0x42, 0xFC, 0x67, 0xAB, 0xB8, 0xA1, 0x0D,
                /* 0460 */  0xF8, 0x2A, 0xEC, 0xCB, 0x15, 0x78, 0x25, 0x5D,
                /* 0468 */  0xAE, 0x00, 0x9A, 0x0C, 0xFF, 0xE5, 0x0A, 0x7C,
                /* 0470 */  0x17, 0x83, 0xFF, 0xFF, 0x9B, 0x03, 0xEE, 0x9A,
                /* 0478 */  0x04, 0xF7, 0x7A, 0x05, 0xF8, 0xC9, 0x7E, 0xBD,
                /* 0480 */  0xA2, 0xB9, 0xAF, 0x57, 0x28, 0x51, 0x10, 0x52,
                /* 0488 */  0x04, 0xA4, 0x99, 0x82, 0xE7, 0x7E, 0x05, 0x38,
                /* 0490 */  0xFF, 0xFF, 0xDF, 0xAF, 0x00, 0x16, 0x84, 0xBB,
                /* 0498 */  0x5F, 0x01, 0xBD, 0xDB, 0x11, 0x78, 0x51, 0xDE,
                /* 04A0 */  0x8E, 0xB0, 0x57, 0x2C, 0x7C, 0xC6, 0x2B, 0x16,
                /* 04A8 */  0x0D, 0xB3, 0x12, 0xC5, 0x5B, 0x13, 0x85, 0xF1,
                /* 04B0 */  0x15, 0x0B, 0x4C, 0xFF, 0xFF, 0x2B, 0x16, 0x30,
                /* 04B8 */  0x3F, 0x88, 0xE2, 0x46, 0x0D, 0xF7, 0xE2, 0xE4,
                /* 04C0 */  0x5B, 0x8F, 0xE7, 0x1B, 0xD1, 0x77, 0x18, 0xCC,
                /* 04C8 */  0x09, 0x0B, 0xC6, 0x0D, 0x0B, 0xF6, 0xE9, 0xCA,
                /* 04D0 */  0x53, 0x7A, 0x89, 0x3A, 0xCC, 0x17, 0x60, 0x9F,
                /* 04D8 */  0xAF, 0x7C, 0xB7, 0x7A, 0x69, 0x08, 0x12, 0xEB,
                /* 04E0 */  0x0D, 0xCB, 0x77, 0x61, 0x03, 0xBD, 0x61, 0xF9,
                /* 04E8 */  0x98, 0x15, 0xD5, 0x28, 0x91, 0x1E, 0xB2, 0x22,
                /* 04F0 */  0xF8, 0x0C, 0x11, 0x29, 0x68, 0xC4, 0x33, 0x78,
                /* 04F8 */  0xD9, 0x32, 0xDC, 0x1B, 0x16, 0x60, 0xF3, 0xFF,
                /* 0500 */  0x7F, 0xC3, 0x02, 0x1C, 0x5E, 0x1C, 0xF8, 0xC1,
                /* 0508 */  0x01, 0x7B, 0xC3, 0x02, 0x7C, 0xCE, 0x14, 0x3C,
                /* 0510 */  0x37, 0x2C, 0xB0, 0xFD, 0xFF, 0x6F, 0x58, 0x00,
                /* 0518 */  0xFF, 0xFF, 0xFF, 0x37, 0x2C, 0xE0, 0x78, 0xBB,
                /* 0520 */  0xC2, 0xDE, 0xB2, 0xB0, 0xB7, 0x17, 0xB2, 0x0A,
                /* 0528 */  0x1A, 0x6A, 0x25, 0x0A, 0xFE, 0xBD, 0x32, 0x0C,
                /* 0530 */  0xBD, 0x61, 0x01, 0x8E, 0xC6, 0xED, 0x51, 0x83,
                /* 0538 */  0xE3, 0x6C, 0xF0, 0x24, 0x81, 0x39, 0x57, 0xE3,
                /* 0540 */  0x66, 0x73, 0x70, 0x81, 0x23, 0xF4, 0x0E, 0xAA,
                /* 0548 */  0xB9, 0xB3, 0x4B, 0x0A, 0x8C, 0x5B, 0x16, 0xDC,
                /* 0550 */  0x63, 0x95, 0x0F, 0x13, 0x21, 0xDE, 0x1A, 0x5E,
                /* 0558 */  0xAB, 0x22, 0xBC, 0x4A, 0xBD, 0x65, 0xF9, 0x4A,
                /* 0560 */  0x6C, 0xA4, 0xB7, 0x2C, 0x5F, 0xB4, 0x7C, 0xCB,
                /* 0568 */  0x32, 0x58, 0x44, 0x5F, 0xB5, 0xD8, 0xB5, 0xD8,
                /* 0570 */  0x80, 0xAF, 0x5C, 0x3E, 0x67, 0xF9, 0xFF, 0x7F,
                /* 0578 */  0xE5, 0x7A, 0xE6, 0xF2, 0xA5, 0xEB, 0x2D, 0x0B,
                /* 0580 */  0xBC, 0x22, 0xFF, 0x2A, 0x3A, 0x11, 0xF8, 0x96,
                /* 0588 */  0x05, 0xF0, 0x23, 0x18, 0x84, 0x9C, 0x0C, 0x1C,
                /* 0590 */  0x7D, 0x5E, 0xC0, 0x0F, 0xE0, 0x61, 0xC4, 0x43,
                /* 0598 */  0x62, 0x01, 0x06, 0x4E, 0xEF, 0x4B, 0x3E, 0x53,
                /* 05A0 */  0xF0, 0x03, 0x86, 0xCF, 0x14, 0xEC, 0x8E, 0x10,
                /* 05A8 */  0xFD, 0x31, 0xC0, 0xE7, 0x12, 0xCC, 0xE0, 0xC0,
                /* 05B0 */  0xFB, 0xFF, 0x1F, 0x1C, 0xBF, 0x56, 0x1C, 0xBA,
                /* 05B8 */  0x47, 0xF1, 0xCA, 0xF0, 0xF0, 0x90, 0xC0, 0x83,
                /* 05C0 */  0x03, 0xC7, 0x9D, 0xE1, 0x88, 0x7C, 0x87, 0xF1,
                /* 05C8 */  0xE0, 0xC0, 0x76, 0x10, 0x00, 0x0E, 0x83, 0xC3,
                /* 05D0 */  0x87, 0x1A, 0x1C, 0x7A, 0x3C, 0x06, 0x0E, 0xE9,
                /* 05D8 */  0xF3, 0x18, 0xBB, 0x30, 0x3C, 0xE4, 0x78, 0x68,
                /* 05E0 */  0x60, 0x03, 0xF4, 0xD0, 0x80, 0xE5, 0x24, 0x9E,
                /* 05E8 */  0x42, 0x0E, 0x0D, 0xCC, 0x12, 0x86, 0x06, 0xEA,
                /* 05F0 */  0xFF, 0xFF, 0xD0, 0xE0, 0xC5, 0x1B, 0x1A, 0x7A,
                /* 05F8 */  0x48, 0x3E, 0x2C, 0xC4, 0x7C, 0xCA, 0x89, 0xF0,
                /* 0600 */  0xBE, 0xE0, 0x13, 0x14, 0x43, 0x7F, 0x4D, 0xF1,
                /* 0608 */  0xED, 0xC2, 0x37, 0x41, 0xDC, 0xF8, 0xC0, 0x75,
                /* 0610 */  0xE9, 0xF4, 0xF8, 0x80, 0xCF, 0x91, 0xCB, 0xE3,
                /* 0618 */  0xC3, 0x1D, 0x9D, 0x3C, 0x3E, 0x18, 0x2E, 0xAF,
                /* 0620 */  0x32, 0xE4, 0x68, 0xE2, 0xA3, 0x15, 0x1B, 0x1E,
                /* 0628 */  0xD8, 0x6E, 0x7A, 0x1E, 0x1E, 0xF0, 0xB9, 0x6E,
                /* 0630 */  0x82, 0xF1, 0x0A, 0xC9, 0xAF, 0x25, 0x30, 0x4E,
                /* 0638 */  0x50, 0xF8, 0xEB, 0x26, 0xBC, 0xFF, 0xFF, 0x75,
                /* 0640 */  0x13, 0xF0, 0x30, 0x0A, 0x9E, 0xE8, 0x92, 0x4D,
                /* 0648 */  0x83, 0xBC, 0x72, 0x14, 0xEB, 0x45, 0x40, 0x61,
                /* 0650 */  0x7C, 0x66, 0x03, 0x1C, 0x8D, 0xF5, 0x99, 0x0D,
                /* 0658 */  0x2C, 0xF7, 0x02, 0x76, 0x63, 0x83, 0x7B, 0x5A,
                /* 0660 */  0x83, 0x7D, 0x8C, 0x78, 0x35, 0x30, 0x84, 0x81,
                /* 0668 */  0x5E, 0xAC, 0x7D, 0x50, 0xF3, 0x09, 0x22, 0xCC,
                /* 0670 */  0x53, 0xB6, 0x47, 0x7A, 0x16, 0xC1, 0x42, 0xF9,
                /* 0678 */  0xD2, 0xE6, 0x73, 0x5A, 0x8C, 0x28, 0xC1, 0xDE,
                /* 0680 */  0xD7, 0x0C, 0x6C, 0x94, 0x27, 0x6C, 0xC3, 0x3E,
                /* 0688 */  0x2A, 0x18, 0x22, 0x81, 0xFF, 0xFF, 0xA7, 0x35,
                /* 0690 */  0x70, 0xCA, 0xB9, 0x62, 0x03, 0x34, 0xB9, 0xE8,
                /* 0698 */  0xE3, 0x0E, 0x29, 0x60, 0xB9, 0x36, 0xB0, 0x5B,
                /* 06A0 */  0x0A, 0xBC, 0x0B, 0x36, 0x70, 0xFA, 0xFF, 0x1F,
                /* 06A8 */  0x51, 0x80, 0x4F, 0xE2, 0x0B, 0x36, 0x4D, 0x7B,
                /* 06B0 */  0xC1, 0x46, 0x71, 0x58, 0x0D, 0x90, 0xE6, 0x09,
                /* 06B8 */  0xFF, 0x7A, 0x0D, 0xFE, 0x49, 0xF8, 0x7A, 0x0D,
                /* 06C0 */  0xD8, 0xBE, 0xC5, 0xE2, 0xAE, 0xD7, 0x60, 0xFD,
                /* 06C8 */  0xFF, 0x5F, 0xAF, 0x01, 0x0B, 0xB1, 0xAE, 0xD7,
                /* 06D0 */  0x40, 0xEF, 0x5A, 0x04, 0xE6, 0x3B, 0xBF, 0x6F,
                /* 06D8 */  0x16, 0x58, 0xC1, 0x17, 0x2B, 0x1A, 0x65, 0x19,
                /* 06E0 */  0x8A, 0xB6, 0x20, 0x0A, 0xE3, 0x8B, 0x15, 0xE0,
                /* 06E8 */  0x08, 0xFB, 0x90, 0xF1, 0xFF, 0xFF, 0x21, 0xC3,
                /* 06F0 */  0xBA, 0x4B, 0x1D, 0x32, 0x7E, 0x06, 0x3E, 0x12,
                /* 06F8 */  0xF8, 0xFA, 0xC3, 0x30, 0x7D, 0xAD, 0x86, 0x7F,
                /* 0700 */  0x95, 0x7A, 0x87, 0x78, 0x96, 0x32, 0xC2, 0xE3,
                /* 0708 */  0xF4, 0x39, 0x3D, 0x57, 0x19, 0xE3, 0x20, 0x9E,
                /* 0710 */  0xAA, 0xDE, 0xAC, 0xD8, 0xB5, 0xEA, 0x69, 0xEF,
                /* 0718 */  0xA1, 0xDA, 0xB7, 0x6A, 0x1F, 0xAA, 0x7D, 0xC2,
                /* 0720 */  0xF2, 0xED, 0x21, 0x44, 0xB4, 0x48, 0x21, 0x82,
                /* 0728 */  0x84, 0x8A, 0xFF, 0x5E, 0xED, 0x9B, 0x15, 0x98,
                /* 0730 */  0x05, 0xDD, 0xAC, 0x00, 0x92, 0xFC, 0xFF, 0xAF,
                /* 0738 */  0x4C, 0xD8, 0x9B, 0x15, 0x58, 0xEE, 0x0D, 0xEC,
                /* 0740 */  0x88, 0xC4, 0x4F, 0x1F, 0xBE, 0x36, 0xC0, 0xB8,
                /* 0748 */  0x5A, 0x01, 0x86, 0xC2, 0x5C, 0xAD, 0x68, 0x90,
                /* 0750 */  0xAB, 0x15, 0xEA, 0x64, 0xE2, 0x7B, 0x9E, 0x27,
                /* 0758 */  0x0A, 0x8E, 0xF0, 0x77, 0x2B, 0x54, 0x6C, 0x12,
                /* 0760 */  0x85, 0x3E, 0x1F, 0xA1, 0x62, 0x1E, 0x46, 0x28,
                /* 0768 */  0x88, 0x01, 0x9D, 0xE1, 0x44, 0x81, 0x56, 0x71,
                /* 0770 */  0xA2, 0x20, 0x77, 0x1C, 0x4F, 0xEA, 0xC9, 0x0A,
                /* 0778 */  0xD8, 0xFF, 0xFF, 0x4F, 0x56, 0x60, 0x5C, 0xA6,
                /* 0780 */  0x87, 0xCA, 0x23, 0x0F, 0x95, 0x82, 0x78, 0xA8,
                /* 0788 */  0x8E, 0x33, 0x54, 0xF4, 0x24, 0x7D, 0x70, 0x80,
                /* 0790 */  0x77, 0xB6, 0x02, 0xBC, 0x09, 0x1E, 0x2B, 0x3D,
                /* 0798 */  0x50, 0x81, 0xEB, 0x98, 0x85, 0x07, 0x7D, 0xCC,
                /* 07A0 */  0x82, 0xA9, 0xD0, 0xA6, 0x4F, 0x8D, 0x46, 0xAD,
                /* 07A8 */  0x1A, 0x94, 0xA9, 0x51, 0xA6, 0x41, 0xAD, 0x3E,
                /* 07B0 */  0x95, 0x1A, 0x33, 0x76, 0xE2, 0x79, 0xE0, 0xD1,
                /* 07B8 */  0x59, 0x82, 0x8A, 0x5A, 0x8C, 0x46, 0xE3, 0x48,
                /* 07C0 */  0x20, 0x34, 0xC6, 0x77, 0x5D, 0x20, 0x0E, 0xFD,
                /* 07C8 */  0xD4, 0x11, 0xA0, 0x83, 0xBE, 0xA8, 0x04, 0x64,
                /* 07D0 */  0x99, 0x6B, 0xD3, 0x39, 0x80, 0x3C, 0x25, 0x64,
                /* 07D8 */  0x04, 0x44, 0xDA, 0x40, 0x04, 0x64, 0x1D, 0x2B,
                /* 07E0 */  0x12, 0x90, 0x55, 0x81, 0x08, 0xC8, 0x19, 0x64,
                /* 07E8 */  0xFC, 0xFF, 0xC1, 0x99, 0x6E, 0x1D, 0x40, 0x2C,
                /* 07F0 */  0x35, 0x08, 0x4D, 0xB8, 0x70, 0x81, 0x3A, 0x2E,
                /* 07F8 */  0x88, 0x80, 0x1C, 0x8D, 0x46, 0x40, 0x0E, 0x4A,
                /* 0800 */  0xA1, 0xA3, 0x19, 0xF9, 0x87, 0x0B, 0xDC, 0x82,
                /* 0808 */  0xAC, 0x00, 0xB1, 0x38, 0x20, 0x34, 0x80, 0x17,
                /* 0810 */  0x50, 0x96, 0x06, 0x44, 0x40, 0x56, 0xBE, 0x56,
                /* 0818 */  0x01, 0x39, 0x07, 0x88, 0x80, 0x9C, 0xDD, 0x0C,
                /* 0820 */  0x38, 0xCB, 0xEC, 0x06, 0x88, 0x29, 0x7E, 0x28,
                /* 0828 */  0x08, 0xC4, 0x1A, 0xF5, 0x80, 0x32, 0xC1, 0x20,
                /* 0830 */  0x02, 0xB2, 0x38, 0x3F, 0x40, 0x4C, 0x2A, 0x88,
                /* 0838 */  0x80, 0x1C, 0xEF, 0x60, 0x22, 0x70, 0xC7, 0x53,
                /* 0840 */  0x04, 0x48, 0x1D, 0x0D, 0x97, 0x82, 0xD0, 0x30,
                /* 0848 */  0xCF, 0x13, 0x81, 0x58, 0xA0, 0x25, 0x30, 0x0A,
                /* 0850 */  0x42, 0x23, 0x69, 0x02, 0x61, 0x72, 0x3D, 0x81,
                /* 0858 */  0xB0, 0x90, 0xDF, 0x74, 0x0D, 0xC1, 0xC1, 0x54,
                /* 0860 */  0x0D, 0x91, 0xBA, 0x3A, 0x21, 0xD0, 0xFF, 0xD4,
                /* 0868 */  0xC1, 0x10, 0x35, 0x20, 0x02, 0x72, 0x72, 0x20,
                /* 0870 */  0xAA, 0xE3, 0x21, 0x22, 0x20, 0xAB, 0xF6, 0x05,
                /* 0878 */  0xCE, 0xB4, 0xBE, 0xB2, 0x02, 0x91, 0xA4, 0x20,
                /* 0880 */  0x34, 0xD2, 0x3B, 0x2B, 0x28, 0xC9, 0x07, 0x22,
                /* 0888 */  0x20, 0xE7, 0x79, 0x5A, 0x09, 0xC8, 0xE9, 0x40,
                /* 0890 */  0x04, 0xE4, 0xFF, 0x3F                         
            })
        }
    }
}

