/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-10-ADebTabl.aml, Mon Feb 10 12:44:08 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000144 (324)
 *     Revision         0x02
 *     Checksum         0x2A
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "ADebTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "ADebTabl", 0x00001000)
{
    Scope (\)
    {
        Name (DPTR, 0x5BBF3000)
        Name (EPTR, 0x5BC03000)
        Name (CPTR, 0x5BBF3020)
        Mutex (MMUT, 0x00)
        OperationRegion (ADBP, SystemIO, 0xB2, 0x02)
        Field (ADBP, ByteAcc, NoLock, Preserve)
        {
            B2PT,   8, 
            B3PT,   8
        }

        Method (MDBG, 1, Serialized)
        {
            OperationRegion (ADHD, SystemMemory, DPTR, 0x20)
            Field (ADHD, ByteAcc, NoLock, Preserve)
            {
                ASIG,   128, 
                ASIZ,   32, 
                ACHP,   32, 
                ACTP,   32, 
                SMIN,   8, 
                WRAP,   8, 
                SMMV,   8, 
                TRUN,   8
            }

            Store (Acquire (MMUT, 0x03E8), Local0)
            If (LEqual (Local0, Zero))
            {
                OperationRegion (ABLK, SystemMemory, CPTR, 0x20)
                Field (ABLK, ByteAcc, NoLock, Preserve)
                {
                    AAAA,   256
                }

                ToHexString (Arg0, Local1)
                Store (Zero, TRUN)
                If (LGreaterEqual (SizeOf (Local1), 0x20))
                {
                    Store (One, TRUN)
                }

                Mid (Local1, Zero, 0x1F, AAAA)
                Add (CPTR, 0x20, CPTR)
                If (LGreaterEqual (CPTR, EPTR))
                {
                    Add (DPTR, 0x20, CPTR)
                    Store (One, WRAP)
                }

                Store (CPTR, ACTP)
                If (SMMV)
                {
                    Store (SMIN, B2PT)
                }

                Release (MMUT)
            }

            Return (Local0)
        }
    }
}

