/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-6-NvOptTbl.aml, Mon Feb 10 12:44:08 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000012D0 (4816)
 *     Revision         0x01
 *     Checksum         0x53
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "NvOptTbl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "NvOptTbl", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._STA, MethodObj)    // 0 Arguments (from opcode)
    External (DID1, UnknownObj)    // (from opcode)
    External (DID2, UnknownObj)    // (from opcode)
    External (DID3, UnknownObj)    // (from opcode)
    External (DID4, UnknownObj)    // (from opcode)
    External (DID5, UnknownObj)    // (from opcode)
    External (DID6, UnknownObj)    // (from opcode)
    External (DID7, UnknownObj)    // (from opcode)
    External (DID8, UnknownObj)    // (from opcode)
    External (DSEN, UnknownObj)    // (from opcode)
    External (NVGA, UnknownObj)    // (from opcode)
    External (NVHA, UnknownObj)    // (from opcode)
    External (NXD1, UnknownObj)    // (from opcode)
    External (NXD2, UnknownObj)    // (from opcode)
    External (NXD3, UnknownObj)    // (from opcode)
    External (NXD4, UnknownObj)    // (from opcode)
    External (NXD5, UnknownObj)    // (from opcode)
    External (NXD6, UnknownObj)    // (from opcode)
    External (NXD7, UnknownObj)    // (from opcode)
    External (NXD8, UnknownObj)    // (from opcode)
    External (XBAS, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0.GFX0)
    {
        OperationRegion (NVIG, SystemMemory, NVGA, 0x0400)
        Field (NVIG, AnyAcc, NoLock, Preserve)
        {
            NISG,   128, 
            NISZ,   32, 
            NIVR,   32, 
            GPSS,   32, 
            GACD,   16, 
            GATD,   16, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            DHPE,   8, 
            DHPS,   8, 
            SGNC,   8, 
            GPPO,   8, 
            USPM,   8, 
            GPSP,   8, 
            TLSN,   8, 
            DOSF,   8, 
            ELCT,   16
        }

        Name (TLPK, Package (0x20)
        {
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C
        })
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (DID1, Index (TLPK, Zero))
            Store (DID2, Index (TLPK, 0x02))
            Store (DID3, Index (TLPK, 0x04))
            Store (DID4, Index (TLPK, 0x06))
            Store (DID5, Index (TLPK, 0x08))
            Store (DID6, Index (TLPK, 0x0A))
            Store (DID7, Index (TLPK, 0x0C))
            Store (DID2, Index (TLPK, 0x0E))
            Store (DID1, Index (TLPK, 0x0F))
            Store (DID2, Index (TLPK, 0x11))
            Store (DID3, Index (TLPK, 0x12))
            Store (DID2, Index (TLPK, 0x14))
            Store (DID4, Index (TLPK, 0x15))
            Store (DID2, Index (TLPK, 0x17))
            Store (DID5, Index (TLPK, 0x18))
            Store (DID2, Index (TLPK, 0x1A))
            Store (DID6, Index (TLPK, 0x1B))
            Store (DID2, Index (TLPK, 0x1D))
            Store (DID7, Index (TLPK, 0x1E))
        }

        Method (MXMX, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (One)
            }

            If (LEqual (Arg0, One))
            {
                Return (One)
            }

            If (LEqual (Arg0, 0x02)){}
            Return (Zero)
        }

        Method (MXDS, 1, Serialized)
        {
            If (LEqual (Arg0, Zero)){}
            If (LEqual (Arg0, One)){}
            Return (Zero)
        }

        Method (INDL, 0, Serialized)
        {
            Store (Zero, NXD1)
            Store (Zero, NXD2)
            Store (Zero, NXD3)
            Store (Zero, NXD4)
            Store (Zero, NXD5)
            Store (Zero, NXD6)
            Store (Zero, NXD7)
            Store (Zero, NXD8)
        }

        Method (SND1, 1, Serialized)
        {
            If (LEqual (Arg0, DID1))
            {
                Store (One, NXD1)
            }

            If (LEqual (Arg0, DID2))
            {
                Store (One, NXD2)
            }

            If (LEqual (Arg0, DID3))
            {
                Store (One, NXD3)
            }

            If (LEqual (Arg0, DID4))
            {
                Store (One, NXD4)
            }

            If (LEqual (Arg0, DID5))
            {
                Store (One, NXD5)
            }

            If (LEqual (Arg0, DID6))
            {
                Store (One, NXD6)
            }

            If (LEqual (Arg0, DID7))
            {
                Store (One, NXD7)
            }

            If (LEqual (Arg0, DID8))
            {
                Store (One, NXD8)
            }
        }

        Method (SNXD, 1, Serialized)
        {
            INDL ()
            Store (One, Local0)
            Store (Zero, Local1)
            While (LLess (Local0, Arg0))
            {
                If (LEqual (DerefOf (Index (TLPK, Local1)), 0x2C))
                {
                    Increment (Local0)
                }

                Increment (Local1)
            }

            SND1 (DerefOf (Index (TLPK, Local1)))
            Increment (Local1)
            If (LNotEqual (DerefOf (Index (TLPK, Local1)), 0x2C))
            {
                SND1 (DerefOf (Index (TLPK, Local1)))
            }
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Store (And (Arg2, 0xFF), Local0)
            If (LEqual (Arg0, ToUUID ("9d95a0a0-0060-4d48-b34d-7e5fea129fd4")))
            {
                If (LNotEqual (Arg1, 0x0102))
                {
                    Return (0x80000002)
                }

                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x7F, 0x00, 0x00, 0x00                         
                    })
                }

                If (LEqual (Arg2, One))
                {
                    Name (TEMP, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TEMP, Zero, STS0)
                    Or (STS0, 0x0B0000BF, STS0)
                    Or (STS0, ShiftLeft (SGNC, 0x08, SGNC), STS0)
                    Return (TEMP)
                }

                If (LEqual (Arg2, 0x02))
                {
                    Name (TMP1, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP1, Zero, STS1)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x1F, Local0)
                    If (And (Local0, 0x10))
                    {
                        And (Local0, 0x0F, Local0)
                        Store (Local0, GPSS)
                        Notify (\_SB.PCI0.GFX0, 0xD9)
                        Notify (\_SB.PCI0.WMI1, 0xD9)
                    }
                    Else
                    {
                        And (Local0, 0x0F, Local0)
                        If (LEqual (GPPO, One))
                        {
                            Store (GPSS, Local0)
                            Or (Local0, 0x10, Local0)
                            Store (Zero, GPPO)
                        }
                    }

                    Or (STS1, Local0, STS1)
                    Return (TMP1)
                }

                If (LEqual (Arg2, 0x03))
                {
                    Name (TMP2, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP2, Zero, STS2)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x03, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP._STA (), Local1)
                    }

                    If (LEqual (Local0, One))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP._ON (), Local1)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP._OFF (), Local1)
                    }

                    Or (STS2, Local1, STS2)
                    Return (TMP2)
                }

                If (LEqual (Arg2, 0x04))
                {
                    Name (TMP3, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP3, Zero, STS3)
                    ToInteger (Arg3, Local0)
                    Store (Local0, Local1)
                    ShiftRight (Local0, 0x10, Local0)
                    And (Local0, One, USPM)
                    ShiftRight (Local1, 0x0D, Local1)
                    And (Local1, 0x03, Local1)
                    If (LNotEqual (Local1, GPSP))
                    {
                        If (LEqual (USPM, One))
                        {
                            Store (Local1, GPSP)
                        }
                        Else
                        {
                            Store (GPSP, Local1)
                            Or (STS3, 0x8000, STS3)
                        }
                    }

                    Or (STS3, ShiftLeft (Local1, 0x0D), STS3)
                    Return (TMP3)
                }

                If (LEqual (Arg2, 0x05))
                {
                    Name (TMP4, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP4, Zero, STS4)
                    ToInteger (Arg3, Local0)
                    If (And (Local0, 0x80000000))
                    {
                        Store (And (ShiftRight (Local0, 0x19), 0x1F), TLSN)
                        If (And (Local0, 0x40000000))
                        {
                            Store (One, DOSF)
                        }
                    }

                    If (And (Local0, 0x01000000))
                    {
                        Store (And (ShiftRight (Local0, 0x0C), 0x0FFF), GACD)
                        Store (And (Local0, 0x0FFF), GATD)
                        Store (CTOI (GACD), TLSN)
                        Increment (TLSN)
                        If (LGreater (TLSN, 0x0D))
                        {
                            Store (One, TLSN)
                        }

                        SNXD (TLSN)
                    }

                    Or (STS4, ShiftLeft (DHPE, 0x15), STS4)
                    Or (STS4, ShiftLeft (DHPS, 0x14), STS4)
                    Or (STS4, ShiftLeft (TLSN, 0x08), STS4)
                    Or (STS4, ShiftLeft (DKST, 0x05), STS4)
                    Or (STS4, ShiftLeft (LDES, 0x04), STS4)
                    Or (STS4, DACE, STS4)
                    Store (Zero, LDES)
                    Store (Zero, DHPS)
                    Store (Zero, DHPE)
                    Store (Zero, DACE)
                    Return (TMP4)
                }

                If (LEqual (Arg2, 0x06))
                {
                    Return (TLPK)
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }

        Method (CTOI, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (One)
                {
                    Return (One)
                }
                Case (0x02)
                {
                    Return (0x02)
                }
                Case (0x04)
                {
                    Return (0x03)
                }
                Case (0x08)
                {
                    Return (0x04)
                }
                Case (0x10)
                {
                    Return (0x05)
                }
                Case (0x20)
                {
                    Return (0x06)
                }
                Case (0x40)
                {
                    Return (0x07)
                }
                Case (0x03)
                {
                    Return (0x08)
                }
                Case (0x06)
                {
                    Return (0x09)
                }
                Case (0x0A)
                {
                    Return (0x0A)
                }
                Case (0x12)
                {
                    Return (0x0B)
                }
                Case (0x22)
                {
                    Return (0x0C)
                }
                Case (0x42)
                {
                    Return (0x0D)
                }
                Default
                {
                    Return (One)
                }

            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Name (CMDS, Zero)
        Name (DBUF, Zero)
        OperationRegion (PG0R, SystemMemory, Add (\XBAS, 0x8000), 0x90)
        Field (PG0R, DWordAcc, NoLock, Preserve)
        {
            Offset (0x84), 
            PWRS,   8
        }

        OperationRegion (PG0X, SystemMemory, Add (\XBAS, 0x00100000), 0x0500)
        Field (PG0X, DWordAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            Offset (0x40), 
            NIDR,   32, 
            Offset (0x488), 
                ,   25, 
            MLTR,   1
        }

        Method (MSOF, 0, NotSerialized)
        {
            Store (0x08, PWRS)
            Sleep (0x10)
            Store (NIDR, DBUF)
            Store (CMDR, CMDS)
            Store (0x0B, PWRS)
            Sleep (0x10)
        }

        Method (MSON, 0, NotSerialized)
        {
            Store (0x08, PWRS)
            Sleep (0x10)
            Store (DBUF, NIDR)
            Store (CMDS, CMDR)
            Store (Zero, MLTR)
            Store (0x0B, PWRS)
            Sleep (0x10)
        }

        Method (DGOF, 0, NotSerialized)
        {
            Store (NIDR, DBUF)
            Store (CMDR, CMDS)
        }

        Method (DGON, 0, NotSerialized)
        {
            Store (DBUF, NIDR)
            Store (CMDS, CMDR)
        }
    }

    Scope (\)
    {
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00010400)
        Field (NVHM, AnyAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            Offset (0x100), 
            NVHO,   32, 
            RVBS,   32, 
            Offset (0x400), 
            RBF1,   262144, 
            RBF2,   262144
        }
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (RTCO, SystemIO, 0x72, 0x02)
        Field (RTCO, ByteAcc, NoLock, Preserve)
        {
            CIND,   8, 
            CDAT,   8
        }

        IndexField (CIND, CDAT, ByteAcc, NoLock, Preserve)
        {
            Offset (0x70), 
            OPTF,   1
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00010000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            If (LGreater (Local0, RVBS))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                           
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                           
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            Else
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00E0 */  0x00, 0x00                                     
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                Return (OPVK)
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (OMPR, 0x02)
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (DGOS, Zero)
        OperationRegion (PCNV, PCI_Config, 0x0488, 0x04)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
                ,   25, 
            MLTF,   1
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (DGOS)
            {
                \_SB.PCI0.PEG0.PEGP._ON ()
                Store (Zero, DGOS)
                Store (Zero, MLTF)
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (\_SB.PCI0.PEG0.PEGP.OMPR, 0x03))
            {
                \_SB.PCI0.PEG0.PEGP._OFF ()
                Store (One, DGOS)
                Store (0x02, \_SB.PCI0.PEG0.PEGP.OMPR)
            }
        }
    }

    Scope (\)
    {
        Method (CMPB, 2, NotSerialized)
        {
            Store (SizeOf (Arg0), Local1)
            If (LNotEqual (Local1, SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Store (Zero, Local0)
            While (LLess (Local0, Local1))
            {
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0))))
                {
                    Return (Zero)
                }

                Increment (Local0)
            }

            Return (One)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (MXMX, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (One)
            }

            If (LEqual (Arg0, One))
            {
                Return (One)
            }

            If (LEqual (Arg0, 0x02)){}
            Return (Zero)
        }

        Method (MXDS, 1, Serialized)
        {
            If (LEqual (Arg0, Zero)){}
            If (LEqual (Arg0, One)){}
            Return (Zero)
        }

        Name (MXM3, Buffer (0x66)
        {
            /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x5D, 0x00,
            /* 0008 */  0x30, 0x11, 0xB8, 0xFF, 0xF9, 0x3E, 0x00, 0x00,
            /* 0010 */  0x00, 0x00, 0x0A, 0xF0, 0xF9, 0x3E, 0x00, 0x00,
            /* 0018 */  0x60, 0xE9, 0xD0, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0020 */  0x60, 0x6A, 0xDA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0028 */  0x20, 0x2B, 0xE2, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0030 */  0x60, 0x6C, 0xEA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0038 */  0x20, 0x6A, 0xDA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0040 */  0x20, 0x6C, 0xEA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0048 */  0x01, 0x90, 0x01, 0x00, 0x03, 0x00, 0x90, 0x01,
            /* 0050 */  0x13, 0x00, 0x90, 0x01, 0xE5, 0x0D, 0x01, 0x01,
            /* 0058 */  0x01, 0x00, 0x00, 0x00, 0xE5, 0x0D, 0x01, 0x03,
            /* 0060 */  0x00, 0x90, 0xD8, 0x09, 0x11, 0x0A             
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665")))
            {
                Store (ToInteger (Arg2), Local0)
                If (LEqual (Local0, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x01, 0x01                         
                    })
                }

                If (LEqual (Local0, 0x18))
                {
                    Return (Buffer (0x04)
                    {
                         0x30, 0x00, 0x00, 0x00                         
                    })
                }

                If (LEqual (Local0, 0x10))
                {
                    If (LEqual (Arg1, 0x0300))
                    {
                        Return (MXM3)
                    }
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (WMI1)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, "MXM2")  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,
                /* 0010 */  0x4D, 0x58, 0x01, 0x02, 0x40, 0x2F, 0x1A, 0x92,
                /* 0018 */  0xC4, 0x0D, 0x2D, 0x40, 0xAC, 0x18, 0xB4, 0x84,
                /* 0020 */  0x44, 0xEF, 0x9E, 0xD2, 0xD0, 0x00, 0x01, 0x08,
                /* 0028 */  0x61, 0xD3, 0x2A, 0xC1, 0xA9, 0x9F, 0x74, 0x4C,
                /* 0030 */  0x90, 0x1F, 0x95, 0xCB, 0x09, 0x45, 0xCF, 0x3E,
                /* 0038 */  0xD9, 0x00, 0x01, 0x08, 0x06, 0x80, 0x84, 0x42,
                /* 0040 */  0x86, 0x88, 0x0E, 0x49, 0x8C, 0x72, 0x2B, 0xDC,
                /* 0048 */  0xA9, 0x3A, 0x8A, 0x09, 0xDB, 0x00, 0x01, 0x08,
                /* 0050 */  0x62, 0xDE, 0x6B, 0xE0, 0x75, 0xEE, 0xF4, 0x48,
                /* 0058 */  0xA5, 0x83, 0xB2, 0x3E, 0x69, 0xAB, 0xF8, 0x91,
                /* 0060 */  0x80, 0x00, 0x01, 0x08, 0x0F, 0xBD, 0xDE, 0x3A,
                /* 0068 */  0x5F, 0x0C, 0xED, 0x46, 0xAB, 0x2E, 0x04, 0x96,
                /* 0070 */  0x2B, 0x4F, 0xDC, 0xBC, 0x81, 0x00, 0x01, 0x08,
                /* 0078 */  0x11, 0x93, 0x51, 0x1E, 0x75, 0x3E, 0x08, 0x42,
                /* 0080 */  0xB0, 0x5E, 0xEB, 0xE1, 0x7E, 0x3F, 0xF4, 0x1F,
                /* 0088 */  0x86, 0x00, 0x01, 0x08, 0x41, 0x53, 0xF8, 0x37,
                /* 0090 */  0x18, 0x44, 0x24, 0x4F, 0x85, 0x33, 0x38, 0xFF,
                /* 0098 */  0xC7, 0x29, 0x55, 0x42, 0x87, 0x00, 0x01, 0x08,
                /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 00B0 */  0x58, 0x4D, 0x01, 0x00                         
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If (LEqual (FUNC, 0x4D53445F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x1C))
                    {
                        CreateField (Arg2, Zero, 0x80, MUID)
                        CreateDWordField (Arg2, 0x10, REVI)
                        CreateDWordField (Arg2, 0x14, SFNC)
                        CreateField (Arg2, 0xE0, 0x20, XRG0)
                        If (LNotEqual (Arg1, 0x10))
                        {
                            Return (\_SB.PCI0.GFX0._DSM (MUID, REVI, SFNC, XRG0))
                        }
                    }
                }
                ElseIf (LEqual (FUNC, 0x584D584D))
                {
                    CreateDWordField (Arg2, 0x08, XRG1)
                    If (LEqual (Arg1, 0x10))
                    {
                        Return (\_SB.PCI0.GFX0.MXMX (XRG1))
                    }
                    Else
                    {
                        Return (\_SB.PCI0.PEG0.PEGP.MXMX (XRG1))
                    }
                }
                ElseIf (LEqual (FUNC, 0x5344584D))
                {
                    CreateDWordField (Arg2, 0x08, XRG2)
                    If (LEqual (Arg1, 0x10))
                    {
                        Return (\_SB.PCI0.GFX0.MXDS (XRG2))
                    }
                    Else
                    {
                        Return (\_SB.PCI0.PEG0.PEGP.MXDS (XRG2))
                    }
                }

                Return (Zero)
            }

            Name (WQXM, Buffer (0x029C)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x8B, 0x02, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x18, 0xD2, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0xE6, 0x80, 0x42, 0x04,
                /* 0028 */  0x92, 0x43, 0xA4, 0x30, 0x30, 0x28, 0x0B, 0x20,
                /* 0030 */  0x86, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x04, 0x84,
                /* 0038 */  0xBC, 0x0A, 0xB0, 0x29, 0xC0, 0x24, 0x88, 0xFA,
                /* 0040 */  0xF7, 0x87, 0x28, 0x09, 0x0E, 0x25, 0x04, 0x42,
                /* 0048 */  0x12, 0x05, 0x98, 0x17, 0xA0, 0x5B, 0x80, 0x61,
                /* 0050 */  0x01, 0xB6, 0x05, 0x98, 0x16, 0xE0, 0x18, 0x92,
                /* 0058 */  0x4A, 0x03, 0xA7, 0x04, 0x96, 0x02, 0x21, 0xA1,
                /* 0060 */  0x02, 0x94, 0x0B, 0xF0, 0x2D, 0x40, 0x3B, 0xA2,
                /* 0068 */  0x24, 0x0B, 0xB0, 0x0C, 0x23, 0x02, 0x8F, 0x82,
                /* 0070 */  0xA1, 0x71, 0x68, 0xEC, 0x30, 0x2C, 0x13, 0x4C,
                /* 0078 */  0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45, 0x60, 0xDC,
                /* 0080 */  0x4E, 0x05, 0xC8, 0x15, 0x20, 0x4C, 0x80, 0x78,
                /* 0088 */  0x54, 0x61, 0x34, 0x07, 0x45, 0xE0, 0x42, 0x63,
                /* 0090 */  0x64, 0x40, 0xC8, 0xA3, 0x00, 0xAB, 0xA3, 0xD0,
                /* 0098 */  0xA4, 0x12, 0xD8, 0xBD, 0x00, 0x8D, 0x02, 0xB4,
                /* 00A0 */  0x09, 0x70, 0x28, 0x40, 0xA1, 0x00, 0x6B, 0x18,
                /* 00A8 */  0x72, 0x06, 0x21, 0x5B, 0xD8, 0xC2, 0x68, 0x50,
                /* 00B0 */  0x80, 0x45, 0x14, 0x8D, 0xE0, 0x2C, 0x2A, 0x9E,
                /* 00B8 */  0x93, 0x50, 0x02, 0xDA, 0x1B, 0x82, 0xF0, 0x8C,
                /* 00C0 */  0xD9, 0x18, 0x9E, 0x10, 0x83, 0x54, 0x86, 0x21,
                /* 00C8 */  0x88, 0xB8, 0x11, 0x8E, 0xA5, 0xFD, 0x41, 0x10,
                /* 00D0 */  0xF9, 0xAB, 0xD7, 0xB8, 0x1D, 0x69, 0x34, 0xA8,
                /* 00D8 */  0xB1, 0x26, 0x38, 0x76, 0x8F, 0xE6, 0x84, 0x3B,
                /* 00E0 */  0x17, 0x20, 0x7D, 0x6E, 0x02, 0x39, 0xBA, 0xD3,
                /* 00E8 */  0xA8, 0x73, 0xD0, 0x64, 0x78, 0x0C, 0x2B, 0xC1,
                /* 00F0 */  0x7F, 0x80, 0x4F, 0x01, 0x78, 0xD7, 0x80, 0x9A,
                /* 00F8 */  0xFE, 0xC1, 0x33, 0x41, 0x70, 0xA8, 0x21, 0x7A,
                /* 0100 */  0xD4, 0xE1, 0x4E, 0xE0, 0xBC, 0x8E, 0x84, 0x41,
                /* 0108 */  0x1C, 0xD1, 0x71, 0x63, 0x67, 0x75, 0x32, 0x07,
                /* 0110 */  0x5D, 0xAA, 0x00, 0xB3, 0x07, 0x00, 0x0D, 0x2E,
                /* 0118 */  0xC1, 0x69, 0x9F, 0x49, 0xE8, 0xF7, 0x80, 0xF3,
                /* 0120 */  0xE9, 0x79, 0x6C, 0x6C, 0x10, 0xA8, 0x91, 0xF9,
                /* 0128 */  0xFF, 0x0F, 0xED, 0x41, 0x9E, 0x56, 0xCC, 0x90,
                /* 0130 */  0xCF, 0x02, 0x87, 0xC5, 0xC4, 0x1E, 0x19, 0xE8,
                /* 0138 */  0x78, 0xC0, 0x7F, 0x00, 0x78, 0x34, 0x88, 0xF0,
                /* 0140 */  0x66, 0xE0, 0xF9, 0x9A, 0x60, 0x50, 0x08, 0x39,
                /* 0148 */  0x19, 0x0F, 0x4A, 0xCC, 0xF9, 0x80, 0xCC, 0x25,
                /* 0150 */  0xC4, 0x43, 0xC0, 0x31, 0xC4, 0x08, 0x7A, 0x46,
                /* 0158 */  0x45, 0x23, 0x6B, 0x22, 0x3E, 0x03, 0x78, 0xDC,
                /* 0160 */  0x96, 0x05, 0x42, 0x09, 0x0C, 0xEC, 0x73, 0xC3,
                /* 0168 */  0x3B, 0x84, 0x61, 0x71, 0xA3, 0x09, 0xEC, 0xF3,
                /* 0170 */  0x85, 0x05, 0x0E, 0x0A, 0x05, 0xEB, 0xBB, 0x42,
                /* 0178 */  0xCC, 0xE7, 0x81, 0xE3, 0x3C, 0x60, 0x0B, 0x9F,
                /* 0180 */  0x28, 0x01, 0x3E, 0x24, 0x8F, 0x06, 0xDE, 0x20,
                /* 0188 */  0xE1, 0x5B, 0x3F, 0x02, 0x10, 0xE0, 0x27, 0x06,
                /* 0190 */  0x13, 0x58, 0x1E, 0x30, 0x7A, 0x94, 0xF6, 0x2B,
                /* 0198 */  0x00, 0x21, 0xF8, 0x8B, 0xC5, 0x53, 0xC0, 0xEB,
                /* 01A0 */  0x40, 0x84, 0x63, 0x81, 0x29, 0x72, 0x6C, 0x68,
                /* 01A8 */  0x78, 0x7E, 0x70, 0x88, 0x1E, 0xF5, 0x5C, 0xC2,
                /* 01B0 */  0x1F, 0x4D, 0x94, 0x53, 0x38, 0x1C, 0x1F, 0x39,
                /* 01B8 */  0x8C, 0x10, 0xFE, 0x49, 0xE3, 0xC9, 0xC3, 0x9A,
                /* 01C0 */  0xEF, 0x00, 0x9A, 0xD2, 0x5B, 0xC0, 0xFB, 0x83,
                /* 01C8 */  0x47, 0x80, 0x11, 0x20, 0xE1, 0x68, 0x82, 0x89,
                /* 01D0 */  0x7C, 0x3A, 0x01, 0xD5, 0xFF, 0xFF, 0x74, 0x02,
                /* 01D8 */  0xB8, 0xBA, 0x01, 0x14, 0x37, 0x6A, 0x9D, 0x49,
                /* 01E0 */  0x7C, 0x2C, 0xF1, 0xAD, 0xE4, 0xBC, 0x43, 0xC5,
                /* 01E8 */  0x7F, 0x93, 0x78, 0x3A, 0xF1, 0x34, 0x1E, 0x4C,
                /* 01F0 */  0x42, 0x44, 0x89, 0x18, 0x21, 0xA2, 0xEF, 0x27,
                /* 01F8 */  0x46, 0x08, 0x15, 0x31, 0x6C, 0xA4, 0x37, 0x80,
                /* 0200 */  0xE7, 0x13, 0xE3, 0x84, 0x08, 0xF4, 0x74, 0xC2,
                /* 0208 */  0x42, 0x3E, 0x34, 0xA4, 0xE1, 0x74, 0x02, 0x50,
                /* 0210 */  0xE0, 0xFF, 0x7F, 0x3A, 0x81, 0x1F, 0xF5, 0x74,
                /* 0218 */  0x82, 0x1E, 0xAE, 0x4F, 0x19, 0x18, 0xE4, 0x03,
                /* 0220 */  0xF2, 0xA9, 0xC3, 0xF7, 0x1F, 0x13, 0xF8, 0x78,
                /* 0228 */  0xC2, 0x45, 0x1D, 0x4F, 0x50, 0xA7, 0x07, 0x1F,
                /* 0230 */  0x4F, 0xD8, 0x19, 0xE1, 0x2C, 0x1E, 0x03, 0x7C,
                /* 0238 */  0x3A, 0xC1, 0xDC, 0x13, 0x7C, 0x3A, 0x01, 0xDB,
                /* 0240 */  0x68, 0x60, 0x1C, 0x4F, 0xC0, 0x77, 0x74, 0xC1,
                /* 0248 */  0x1D, 0x4F, 0xC0, 0x30, 0x18, 0x18, 0xE7, 0x13,
                /* 0250 */  0xE0, 0x31, 0x5E, 0xDC, 0x31, 0xC0, 0x43, 0xE0,
                /* 0258 */  0x03, 0x78, 0xDC, 0x38, 0x3D, 0x2B, 0x9D, 0x14,
                /* 0260 */  0xF2, 0x24, 0xC2, 0x07, 0x85, 0x39, 0xB0, 0xE0,
                /* 0268 */  0x14, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83,
                /* 0270 */  0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52,
                /* 0278 */  0x63, 0xC6, 0xCE, 0x19, 0x0E, 0xF8, 0x10, 0xD0,
                /* 0280 */  0x89, 0xC0, 0xF2, 0x9E, 0x0D, 0x02, 0xB1, 0x0C,
                /* 0288 */  0x0A, 0x81, 0x58, 0xFA, 0xAB, 0x45, 0x20, 0x0E,
                /* 0290 */  0x0E, 0xA2, 0xFF, 0x3F, 0x88, 0x23, 0xD2, 0x0A,
                /* 0298 */  0xC4, 0xFF, 0x7F, 0x7F                         
            })
        }
    }
}

