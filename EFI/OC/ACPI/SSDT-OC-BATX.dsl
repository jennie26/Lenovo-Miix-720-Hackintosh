/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLVb5J7I.aml, Wed May 13 23:01:54 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000151B (5403)
 *     Revision         0x02
 *     Checksum         0x15
 *     OEM ID           "hack"
 *     OEM Table ID     "BATT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "BATT", 0x00000000)
{
    External (_SB_.P80H, FieldUnitObj)    // (from opcode)
    External (_SB_.OSYS, FieldUnitObj)
    External (_SB_.OSTY, FieldUnitObj)    
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.ADP0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.ADP0.YSTA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.B1AT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.B1CT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.B1ST, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.B1TY, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.OBAC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.OBPR, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.OBPV, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.OBRC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.OBST, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.PBIF, PkgObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.PBST, PkgObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.XBIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.XBST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.XSTA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BCNT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.ECAV, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.FUSH, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.FUSL, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.LFCM, MutexObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.LID0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.LID0.XSTA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.LRAM, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SMAD, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SMCM, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SMPR, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SMST, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.LSTE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.VPC0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.QBAC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.QBCT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.QBFC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.QBPV, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.QBRC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBAC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBCT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBFC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBPV, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBRC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.XBID, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.XHIF, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.XHPF, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.XMTE, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.XMTF, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.XSBI, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.XREG, MethodObj)
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)     
    External (B1AT, IntObj)    // (from opcode)
    External (B1CT, IntObj)    // (from opcode)
    External (B1ST, IntObj)    // (from opcode)
    External (ECAV, IntObj)    // (from opcode)
    External (ECON, FieldUnitObj)    // (from opcode)
    External (FUSH, IntObj)    // (from opcode)
    External (FUSL, IntObj)    // (from opcode)
    External (OBPR, IntObj)    // (from opcode)
    External (OBPV, IntObj)    // (from opcode)
    External (OBRC, IntObj)    // (from opcode)
    External (OBST, IntObj)    // (from opcode)
    External (PBIF, IntObj)    // (from opcode)
    External (PBST, IntObj)    // (from opcode)
    External (QBCT, IntObj)    // (from opcode)
    External (SMST, IntObj)    // (from opcode)
    External (VBCT, IntObj)    // (from opcode)
    External (LIDS, UnknownObj)


    Scope (_SB.PCI0.LPCB.EC0)
    {
        Name (ECOK, Zero)
        
        OperationRegion (ERM2, EmbeddedControl, Zero, 0xFF)
        Field (ERM2, ByteAcc, Lock, Preserve)
        {
            Offset (0x14), 
            FWBX,   64, 
            Offset (0x4C), 
            B2UD,   8, 
            B3UD,   8, 
            Offset (0x64), 
            SMDX,   256, 
            Offset (0x8F), 
            BMNX,   72, 
            BDNX,   64, 
            Offset (0xC2), 
            B2RC,   8, 
            B3RC,   8, 
            B2SN,   8, 
            B3SN,   8, 
            B2FV,   8, 
            B3FV,   8, 
            B2DV,   8, 
            B3DV,   8, 
            B2DC,   8, 
            B3DC,   8, 
            B2FC,   8, 
            B3FC,   8, 
            Offset (0xD2), 
            B2AC,   8, 
            B3AC,   8, 
            Offset (0xF4), 
            B2DA,   8, 
            B3DA,   8
        }
        
        Method (_REG, 2, NotSerialized) 
        {
            If (_OSI ("Darwin"))
            {
                If (LEqual (Arg0, 0x03))
                {
                    Store (Arg1, ECAV)
                    Store (One, LIDS)
                }

                If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                {
                    If (LEqual (OSYS, 0x07D6))
                    {
                        Store (One, Local0)
                    }

                    If (LEqual (OSYS, 0x03E8))
                    {
                        Store (0x02, Local0)
                    }

                    If (LEqual (OSYS, 0x07D9))
                    {
                        Store (0x03, Local0)
                    }

                    If (LEqual (OSYS, 0x07DC))
                    {
                        Store (0x04, Local0)
                    }

                    If (LEqual (OSYS, 0x07DD))
                    {
                        Store (0x05, Local0)
                    }

                    If (LEqual (OSYS, 0x07DF))
                    {
                        Store (0x06, Local0)
                    }

                    Store (One, ECON)
                    If (LEqual (Acquire (LFCM, 0xA000), Zero))
                    {
                        Store (Local0, OSTY)
                        If (LEqual (LSTE, Zero))
                        {
                            Store (Zero, ^^^GFX0.CLID)
                        }

                        If (LEqual (LSTE, One))
                        {
                            Store (0x03, ^^^GFX0.CLID)
                        }
                        
                        Release (LFCM)
                    }
                }
            }
            Else
            {
                Return (XREG(Arg0, Arg1))
            }
        }

        Scope (ADP0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (YSTA ())
                }
            }
        }

        Scope (LID0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (XSTA ())
                }
            }
        }

        Scope (BAT0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (XSTA ())
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If (_OSI ("Darwin"))
                {
                    If (LEqual (ECAV, One))
                    {
                        If (LEqual (Acquire (LFCM, 0xA000), Zero))
                        {
                            Store (B1B2 (B2DC, B3DC), Local0)
                            Multiply (Local0, 0x0A, Local0)
                            Store (Local0, Index (PBIF, One))
                            Store (B1B2 (B2FC, B3FC), Local0)
                            Multiply (Local0, 0x0A, Local0)
                            Store (Local0, Index (PBIF, 0x02))
                            Store (B1B2 (B2DV, B3DV), Index (PBIF, 0x04))
                            If (B1B2 (B2FC, B3FC))
                            {
                                Store (Divide (Multiply (B1B2 (B2FC, B3FC), 0x0A), 0x0A, ), Index (PBIF, 0x05))
                                Store (Divide (Multiply (B1B2 (B2FC, B3FC), 0x0A), 0x19, ), Index (PBIF, 0x06))
                                Store (Divide (Multiply (B1B2 (B2DC, B3DC), 0x0A), 0x64, ), Index (PBIF, 0x07))
                            }

                            Store ("", Index (PBIF, 0x09))
                            Store ("", Index (PBIF, 0x0A))
                            Store ("", Index (PBIF, 0x0B))
                            Store ("", Index (PBIF, 0x0C))
                            Name (BDNT, Buffer (0x09)
                            {
                                 0x00                                           
                            })
                            Store (RECB (0x98, 0x40), BDNT)
                            Store (ToString (BDNT, Ones), Index (PBIF, 0x09))
                            Store (B1B2 (B2SN, B3SN), Local0)
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Store (0x04, Local2)
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                Add (Local1, 0x30, Index (SERN, Local2))
                                Decrement (Local2)
                            }

                            Store (SERN, Index (PBIF, 0x0A))
                            Name (DCH0, Buffer (0x0A)
                            {
                                 0x00                                           
                            })
                            Name (DCH1, "LION")
                            Name (DCH2, "LiP")
                            If (LEqual (B1TY, One))
                            {
                                Store (DCH1, DCH0)
                                Store (ToString (DCH0, Ones), Index (PBIF, 0x0B))
                            }
                            Else
                            {
                                Store (DCH2, DCH0)
                                Store (ToString (DCH0, Ones), Index (PBIF, 0x0B))
                            }

                            Name (BMNT, Buffer (0x0A)
                            {
                                 0x00                                           
                            })
                            Store (RECB (0x8F, 0x48), BMNT)
                            Store (ToString (BMNT, Ones), Index (PBIF, 0x0C))
                            Release (LFCM)
                        }
                    }

                    Return (PBIF)
                }
                Else
                {
                    Return (XBIF ())
                }
            }

            Method (_BST, 0, Serialized)  // _BST: Battery Status
            {
                If (_OSI ("Darwin"))
                {
                    If (LEqual (ECAV, One))
                    {
                        If (LEqual (Acquire (LFCM, 0xA000), Zero))
                        {
                            Sleep (0x10)
                            Store (B1ST, Local0)
                            Store (DerefOf (Index (PBST, Zero)), Local1)
                            Switch (And (Local0, 0x07))
                            {
                                Case (Zero)
                                {
                                    Store (And (Local1, 0xF8), OBST)
                                }
                                Case (One)
                                {
                                    Store (Or (One, And (Local1, 0xF8)), OBST)
                                }
                                Case (0x02)
                                {
                                    Store (Or (0x02, And (Local1, 0xF8)), OBST)
                                }
                                Case (0x04)
                                {
                                    Store (Or (0x04, And (Local1, 0xF8)), OBST)
                                }

                            }

                            Sleep (0x10)
                            Store (B1B2 (B2AC, B3AC), OBAC)
                            If (And (OBST, One))
                            {
                                If (LNotEqual (OBAC, Zero))
                                {
                                    Store (And (Not (OBAC), 0x7FFF), OBAC)
                                }
                            }

                            Sleep (0x10)
                            Store (B1B2 (B2RC, B3RC), OBRC)
                            Sleep (0x10)
                            Store (B1B2 (B2FV, B3FV), OBPV)
                            Multiply (OBRC, 0x0A, OBRC)
                            Store (Divide (Multiply (OBAC, OBPV), 0x03E8, ), OBPR)
                            Store (OBST, Index (PBST, Zero))
                            Store (OBPR, Index (PBST, One))
                            Store (OBRC, Index (PBST, 0x02))
                            Store (OBPV, Index (PBST, 0x03))
                            Release (LFCM)
                        }
                    }

                    Return (PBST)
                }
                Else
                {
                    Return (XBST ())
                }
            }
        }

        Scope (VPC0)
        {
            Method (SMTF, 1, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    If (ECAV)
                    {
                        If (LEqual (Acquire (LFCM, 0xA000), Zero))
                        {
                            If (LEqual (Arg0, Zero))
                            {
                                If (LEqual (B1B2 (B2FV, B3FV), Zero))
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }

                                If (LEqual (B1B2 (B2AC, B3AC), Zero))
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }

                                Store (B1B2 (B2FC, B3FC), Local0)
                                Multiply (Local0, 0x0A, Local0)
                                Store (Local0, VBFC)
                                Store (B1B2 (B2RC, B3RC), Local1)
                                Multiply (Local1, 0x0A, Local1)
                                Store (Local1, VBRC)
                                If (LGreater (VBFC, VBRC))
                                {
                                    Store (B1B2 (B2FV, B3FV), VBPV)
                                    Store (B1B2 (B2AC, B3AC), VBAC)
                                    Subtract (Local0, Local1, Local0)
                                    Store (Multiply (VBAC, VBPV), Local1)
                                    Store (Multiply (Local0, 0x03E8), Local3)
                                    Store (Multiply (Local3, 0x3C), Local3)
                                    Store (Divide (Local3, Local1, ), VBCT)
                                    Release (LFCM)
                                    Return (VBCT)
                                }
                                Else
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }
                            }

                            If (LEqual (Arg0, One))
                            {
                                Release (LFCM)
                                Return (0xFFFF)
                            }

                            Release (LFCM)
                        }
                    }

                    Return (0xFFFF)
                }
                Else
                {
                    Return (XMTF (Arg0))
                }
            }

            Method (SMTE, 1, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    If (ECAV)
                    {
                        If (LEqual (Acquire (LFCM, 0xA000), Zero))
                        {
                            If (LEqual (Arg0, Zero))
                            {
                                If (LEqual (B1B2 (B2FV, B3FV), Zero))
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }

                                If (LEqual (B1B2 (B2AC, B3AC), Zero))
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }

                                Store (B1B2 (B2RC, B3RC), Local0)
                                Multiply (Local0, 0x0A, Local0)
                                Store (Local0, QBRC)
                                Store (B1B2 (B2FC, B3FC), Local1)
                                Multiply (Local1, 0x0A, Local1)
                                Store (Local1, QBFC)
                                If (LGreater (QBFC, QBRC))
                                {
                                    Store (B1B2 (B2FV, B3FV), QBPV)
                                    If (LEqual (And (B1B2 (B2AC, B3AC), 0x8000), Zero))
                                    {
                                        Store (B1B2 (B2AC, B3AC), QBAC)
                                    }
                                    Else
                                    {
                                        Store (Subtract (0xFFFF, B1B2 (B2AC, B3AC)), QBAC)
                                    }

                                    Store (Multiply (QBAC, QBPV), Local1)
                                    Store (Multiply (Local0, 0x03E8), Local3)
                                    Store (Multiply (Local3, 0x3C), Local3)
                                    Store (Divide (Local3, Local1, ), QBCT)
                                    Release (LFCM)
                                    Return (QBCT)
                                }
                                Else
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }
                            }

                            If (LEqual (Arg0, One))
                            {
                                Release (LFCM)
                                Return (0xFFFF)
                            }

                            Release (LFCM)
                        }
                    }

                    Return (0xFFFF)
                }
                Else
                {
                    Return (XMTE (Arg0))
                }
            }

            Method (MHPF, 1, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    If (ECAV)
                    {
                        If (LEqual (Acquire (LFCM, 0xA000), Zero))
                        {
                            Name (BFWB, Buffer (0x25){})
                            CreateByteField (BFWB, Zero, FB0)
                            CreateByteField (BFWB, One, FB1)
                            CreateByteField (BFWB, 0x02, FB2)
                            CreateByteField (BFWB, 0x03, FB3)
                            CreateField (BFWB, 0x20, 0x0100, FB4)
                            CreateByteField (BFWB, 0x24, FB5)
                            If (LLessEqual (SizeOf (Arg0), 0x25))
                            {
                                If (LNotEqual (SMPR, Zero))
                                {
                                    Store (SMST, FB1)
                                }
                                Else
                                {
                                    Store (Arg0, BFWB)
                                    Store (FB2, SMAD)
                                    Store (FB3, SMCM)
                                    Store (FB5, BCNT)
                                    Store (FB0, Local0)
                                    If (LEqual (And (Local0, One), Zero))
                                    {
                                        WECB (0x64, 0x0100, FB4)
                                    }

                                    Store (Zero, SMST)
                                    Store (FB0, SMPR)
                                    Store (0x03E8, Local1)
                                    While (Local1)
                                    {
                                        Sleep (One)
                                        Decrement (Local1)
                                        If (LOr (LAnd (SMST, 0x80), LEqual (SMPR, Zero)))
                                        {
                                            Break
                                        }
                                    }

                                    Store (FB0, Local0)
                                    If (LNotEqual (And (Local0, One), Zero))
                                    {
                                        Store (RECB (0x64, 0x0100), FB4)
                                    }

                                    Store (SMST, FB1)
                                    If (LOr (LEqual (Local1, Zero), LNot (LAnd (SMST, 0x80))))
                                    {
                                        Store (Zero, SMPR)
                                        Store (0x92, FB1)
                                    }
                                }

                                Release (LFCM)
                                Return (BFWB)
                            }

                            Release (LFCM)
                        }
                    }
                }
                Else
                {
                    Return (XHPF (Arg0))
                }
            }

            Method (MHIF, 1, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    If (ECAV)
                    {
                        If (LEqual (Acquire (LFCM, 0xA000), Zero))
                        {
                            Store (0x50, P80H)
                            If (LEqual (Arg0, Zero))
                            {
                                Name (RETB, Buffer (0x0A){})
                                Name (BUF1, Buffer (0x08){})
                                Store (RECB (0x14, 0x40), BUF1)
                                CreateByteField (BUF1, Zero, FW0)
                                CreateByteField (BUF1, One, FW1)
                                CreateByteField (BUF1, 0x02, FW2)
                                CreateByteField (BUF1, 0x03, FW3)
                                CreateByteField (BUF1, 0x04, FW4)
                                CreateByteField (BUF1, 0x05, FW5)
                                CreateByteField (BUF1, 0x06, FW6)
                                CreateByteField (BUF1, 0x07, FW7)
                                Store (FUSL, Index (RETB, Zero))
                                Store (FUSH, Index (RETB, One))
                                Store (FW0, Index (RETB, 0x02))
                                Store (FW1, Index (RETB, 0x03))
                                Store (FW2, Index (RETB, 0x04))
                                Store (FW3, Index (RETB, 0x05))
                                Store (FW4, Index (RETB, 0x06))
                                Store (FW5, Index (RETB, 0x07))
                                Store (FW6, Index (RETB, 0x08))
                                Store (FW7, Index (RETB, 0x09))
                                Release (LFCM)
                                Return (RETB)
                            }

                            Release (LFCM)
                        }
                    }
                }
                Else
                {
                    Return (XHIF (Arg0))
                }
            }

            Method (GSBI, 1, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Name (BIFB, Buffer (0x53)
                    {
                        /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0018 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0020 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0028 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0030 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0038 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0040 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0048 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0050 */  0xFF, 0xFF, 0xFF                               
                    })
                    CreateWordField (BIFB, Zero, DCAP)
                    CreateWordField (BIFB, 0x02, FCAP)
                    CreateWordField (BIFB, 0x04, RCAP)
                    CreateWordField (BIFB, 0x06, ATTE)
                    CreateWordField (BIFB, 0x08, ATTF)
                    CreateWordField (BIFB, 0x0A, BTVT)
                    CreateWordField (BIFB, 0x0C, BTCT)
                    CreateWordField (BIFB, 0x0E, BTMP)
                    CreateWordField (BIFB, 0x10, MDAT)
                    CreateWordField (BIFB, 0x12, FUDT)
                    CreateWordField (BIFB, 0x14, DVLT)
                    CreateField (BIFB, 0xB0, 0x50, DCHE)
                    CreateField (BIFB, 0x0100, 0x40, DNAM)
                    CreateField (BIFB, 0x0140, 0x60, MNAM)
                    CreateField (BIFB, 0x01A0, 0xB8, BRNB)
                    CreateQWordField (BIFB, 0x4B, BFW0)
                    If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, One)))
                    {
                        If (LEqual (ECON, One))
                        {
                            If (LEqual (Acquire (LFCM, 0xA000), Zero))
                            {
                                Store (B1B2 (B2DC, B3DC), Local0)
                                Multiply (Local0, 0x0A, Local0)
                                Store (Local0, DCAP)
                                Store (B1B2 (B2FC, B3FC), Local0)
                                Multiply (Local0, 0x0A, Local0)
                                Store (Local0, FCAP)
                                Store (B1B2 (B2RC, B3RC), Local0)
                                Multiply (Local0, 0x0A, Local0)
                                Store (Local0, RCAP)
                                Store (SMTE (Zero), ATTE)
                                Store (SMTF (Zero), ATTF)
                                Store (B1B2 (B2FV, B3FV), BTVT)
                                Store (B1B2 (B2AC, B3AC), BTCT)
                                Store (B1AT, Local0)
                                Add (Local0, 0x0111, Local0)
                                Multiply (Local0, 0x0A, Local0)
                                Store (Local0, BTMP)
                                Store (B1B2 (B2DA, B3DA), MDAT)
                                If (LNotEqual (B1B2 (B2UD, B3UD), Zero))
                                {
                                    Store (B1B2 (B2UD, B3UD), FUDT)
                                }

                                Store (B1B2 (B2DV, B3DV), DVLT)
                                Name (DCH0, Buffer (0x0A)
                                {
                                     0x00                                           
                                })
                                Name (DCH1, "LION")
                                Name (DCH2, "LiP")
                                If (LEqual (B1TY, One))
                                {
                                    Store (DCH1, DCH0)
                                    Store (DCH0, DCHE)
                                }
                                Else
                                {
                                    Store (DCH2, DCH0)
                                    Store (DCH0, DCHE)
                                }

                                Name (BDNT, Buffer (0x08)
                                {
                                     0x00                                           
                                })
                                Store (RECB (0x98, 0x40), BDNT)
                                Store (BDNT, DNAM)
                                Name (BMNT, Buffer (0x0C)
                                {
                                     0x00                                           
                                })
                                Store (RECB (0x8F, 0x48), BMNT)
                                Store (BMNT, MNAM)
                                Name (BRN0, Buffer (0x17)
                                {
                                     0x00                                           
                                })
                                Store (0x17, Local1)
                                Store (0x2E, Local2)
                                While (Local1)
                                {
                                    Store (LRAM (0x02, Local2), Index (BRN0, Subtract (0x17, Local1)))
                                    Increment (Local2)
                                    Decrement (Local1)
                                }

                                Store (BRN0, BRNB)
                                Store (RECB (0x14, 0x40), BFW0)
                                Release (LFCM)
                            }
                        }

                        Return (BIFB)
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        Return (BIFB)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (XSBI (Arg0))
                }
            }

            Method (GBID, 0, Serialized)
            {
                If (_OSI ("Darwin"))
                {
                    Name (GBUF, Package (0x04)
                    {
                        Buffer (0x02)
                        {
                             0x00, 0x00                                     
                        }, 

                        Buffer (0x02)
                        {
                             0x00, 0x00                                     
                        }, 

                        Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }, 

                        Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                    If (ECAV)
                    {
                        If (LEqual (Acquire (LFCM, 0xA000), Zero))
                        {
                            Store (B1CT, Index (DerefOf (Index (GBUF, Zero)), Zero))
                            Store (Zero, Index (DerefOf (Index (GBUF, One)), Zero))
                            Name (BUF1, Buffer (0x08){})
                            Store (RECB (0x14, 0x40), BUF1)
                            CreateByteField (BUF1, Zero, FW0)
                            CreateByteField (BUF1, One, FW1)
                            CreateByteField (BUF1, 0x02, FW2)
                            CreateByteField (BUF1, 0x03, FW3)
                            CreateByteField (BUF1, 0x04, FW4)
                            CreateByteField (BUF1, 0x05, FW5)
                            CreateByteField (BUF1, 0x06, FW6)
                            CreateByteField (BUF1, 0x07, FW7)
                            Store (FW0, Index (DerefOf (Index (GBUF, 0x02)), Zero))
                            Store (FW1, Index (DerefOf (Index (GBUF, 0x02)), One))
                            Store (FW2, Index (DerefOf (Index (GBUF, 0x02)), 0x02))
                            Store (FW3, Index (DerefOf (Index (GBUF, 0x02)), 0x03))
                            Store (FW4, Index (DerefOf (Index (GBUF, 0x02)), 0x04))
                            Store (FW5, Index (DerefOf (Index (GBUF, 0x02)), 0x05))
                            Store (FW6, Index (DerefOf (Index (GBUF, 0x02)), 0x06))
                            Store (FW7, Index (DerefOf (Index (GBUF, 0x02)), 0x07))
                            Store (Zero, Index (DerefOf (Index (GBUF, 0x03)), Zero))
                            Release (LFCM)
                        }
                    }

                    Return (GBUF)
                }
                Else
                {
                    Return (XBID ())
                }
            }
        }

        Method (RE1B, 1, NotSerialized)
        {
            OperationRegion (ERM2, EmbeddedControl, Arg0, One)
            Field (ERM2, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE)
        }

        Method (RECB, 2, Serialized)
        {
            ShiftRight (Add (Arg1, 0x07), 0x03, Arg1)
            Name (TEMP, Buffer (Arg1){})
            Add (Arg1, Arg0, Arg1)
            Store (Zero, Local0)
            While (LLess (Arg0, Arg1))
            {
                Store (RE1B (Arg0), Index (TEMP, Local0))
                Increment (Arg0)
                Increment (Local0)
            }

            Return (TEMP)
        }

        Method (WE1B, 2, NotSerialized)
        {
            OperationRegion (ERM2, EmbeddedControl, Arg0, One)
            Field (ERM2, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Store (Arg1, BYTE)
        }

        Method (WECB, 3, Serialized)
        {
            ShiftRight (Add (Arg1, 0x07), 0x03, Arg1)
            Name (TEMP, Buffer (Arg1){})
            Store (Arg2, TEMP)
            Add (Arg1, Arg0, Arg1)
            Store (Zero, Local0)
            While (LLess (Arg0, Arg1))
            {
                WE1B (Arg0, DerefOf (Index (TEMP, Local0)))
                Increment (Arg0)
                Increment (Local0)
            }
        }

        Method (B1B2, 2, NotSerialized)
        {
            Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
        }
    }
}

