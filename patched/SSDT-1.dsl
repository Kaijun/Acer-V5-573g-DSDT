/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of acpi_ssdt1.aml, Fri Jun 17 15:50:13 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000008B6 (2230)
 *     Revision         0x01
 *     Checksum         0x5B
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("acpi_ssdt1.aml", "SSDT", 1, "ACRSYS", "ACRPRDCT", 0x00001000)
{

    External (_SB_.IFFS.FFSS, UnknownObj)
    External (_SB_.PCI0.GFX0.ASLC, FieldUnitObj)
    External (_SB_.PCI0.GFX0.ASLE, FieldUnitObj)
    External (_SB_.PCI0.GFX0.PARD, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.STAT, FieldUnitObj)
    External (_SB_.PCI0.GFX0.TCHE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.AWT0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.AWT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.AWT2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.IBT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LIDT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.NIWM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.WLST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.WTMS, FieldUnitObj)
    External (_SB_.WFVD, FieldUnitObj)
    External (GO55, FieldUnitObj)
    External (ICNF, FieldUnitObj)

    Scope (\_SB)
    {
        Device (IAOE)
        {
            OperationRegion (ISCT, SystemMemory, 0x9AEBEC98, 0x0011)
            Field (ISCT, AnyAcc, Lock, Preserve)
            {
                WKRS,   8, 
                AOCE,   8, 
                FFSE,   8, 
                ITMR,   8, 
                ECTM,   32, 
                RCTM,   32, 
                GNPT,   32, 
                ATOW,   8
            }

            Name (_HID, "INT33A0")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (IBT1, Zero)
            Name (IBT2, Zero)
            Name (INSB, Zero)
            Name (WTMS, Zero)
            Name (AWT0, Zero)
            Name (AWT1, Zero)
            Name (AWT2, Zero)
            Name (PTSL, Zero)
            Name (SLPD, Zero)
            Name (IMDS, Zero)
            Name (IWDT, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WFVD == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (GABS, 0, NotSerialized)
            {
                Return (ICNF)
            }

            Method (GAOS, 0, NotSerialized)
            {
                If ((ITMR == One))
                {
                    Local0 = (IBT1 & One)
                    Local0 |= (IMDS & 0x02)
                    Return (Local0)
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Local0 = \_SB.PCI0.LPCB.EC0.IBT1
                    }
                    Else
                    {
                        Local0 = IBT1
                    }

                    Local0 &= One
                    Local0 |= (IMDS & 0x02)
                    Return (Local0)
                }
            }

            Method (SAOS, 1, NotSerialized)
            {
                Local7 = Arg0
                If (((Local7 & One) == One))
                {
                    GO55 = Zero
                }
                Else
                {
                    If (\_SB.PCI0.LPCB.EC0.LIDT)
                    {
                        GO55 = Zero
                    }
                    Else
                    {
                        GO55 = One
                    }
                }

                If ((\_SB.PCI0.GFX0.TCHE & 0x0100))
                {
                    If ((ITMR == One))
                    {
                        If ((((IBT1 & One) && (\_SB.IAOE.WKRS & 0x02)) && !
                            (Arg0 & One)))
                        {
                            If (!\_SB.PCI0.GFX0.PARD ())
                            {
                                \_SB.PCI0.GFX0.STAT = (\_SB.PCI0.GFX0.STAT & 0xFFFFFFFC)
                                \_SB.PCI0.GFX0.ASLC = (\_SB.PCI0.GFX0.ASLC | 0x0100)
                                \_SB.PCI0.GFX0.ASLE = One
                            }
                        }
                    }
                    Else
                    {
                        If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                        {
                            If ((((\_SB.PCI0.LPCB.EC0.IBT1 & One) && (\_SB.IAOE.WKRS & 0x02)) && !
                                (Arg0 & One)))
                            {
                                If (!\_SB.PCI0.GFX0.PARD ())
                                {
                                    \_SB.PCI0.GFX0.STAT = (\_SB.PCI0.GFX0.STAT & 0xFFFFFFFC)
                                    \_SB.PCI0.GFX0.ASLC = (\_SB.PCI0.GFX0.ASLC | 0x0100)
                                    \_SB.PCI0.GFX0.ASLE = One
                                }
                            }
                        }
                    }
                }

                If ((ITMR == One))
                {
                    IMDS = (Arg0 & 0x02)
                    Local0 = (IBT1 & 0xFE)
                    IBT1 = (Local0 | (Arg0 & One))
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Local0 = \_SB.PCI0.LPCB.EC0.IBT1
                    }
                    Else
                    {
                        Local0 = IBT1
                    }

                    Local0 &= 0xFE
                    Local0 |= (Arg0 & One)
                    IMDS = (Arg0 & 0x02)
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        \_SB.PCI0.LPCB.EC0.IBT1 = Local0
                    }
                    Else
                    {
                        IBT1 = Local0
                    }
                }

                If ((IMDS && 0x02))
                {
                    \_SB.PCI0.LPCB.EC0.NIWM = Zero
                }
                Else
                {
                    \_SB.PCI0.LPCB.EC0.NIWM = One
                }
            }

            Method (GANS, 0, NotSerialized)
            {
                Return (INSB)
            }

            Method (SANS, 1, NotSerialized)
            {
                INSB = (Arg0 & One)
            }

            Method (GWLS, 0, NotSerialized)
            {
                If ((ITMR == One))
                {
                    Return ((IBT1 & 0x0E))
                }
                Else
                {
                    If (\_SB.PCI0.LPCB.EC0.WLST)
                    {
                        Local0 = \_SB.PCI0.LPCB.EC0.WLST
                        Local0 |= One
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Local1 = \_SB.PCI0.LPCB.EC0.IBT1
                    }
                    Else
                    {
                        Local1 = IBT1
                    }

                    Local0 |= (Local1 & 0x0E)
                    Return (Local0)
                }
            }

            Method (SWLS, 1, NotSerialized)
            {
                If ((ITMR == One))
                {
                    IBT1 = ((Arg0 & 0x0E) & IBT1)
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Local0 = \_SB.PCI0.LPCB.EC0.IBT1
                    }
                    Else
                    {
                        Local0 = IBT1
                    }

                    Local0 &= 0xF1
                    Local0 |= (Arg0 & 0x0E)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (((\_SB.IFFS.FFSS & 0x03) && (Arg0 & 0x02)))
                        {
                            Local0 |= 0x04
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        \_SB.PCI0.LPCB.EC0.IBT1 = Local0
                    }
                    Else
                    {
                        IBT1 = Local0
                    }
                }
            }

            Method (GWWS, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (SWWS, 1, NotSerialized)
            {
                If ((ITMR == One))
                {
                    IBT1 = (((Arg0 & 0x0E) & IBT1) << 0x03)
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Local0 = \_SB.PCI0.LPCB.EC0.IBT1
                    }
                    Else
                    {
                        Local0 = IBT1
                    }

                    Local0 &= 0x8F
                    Local0 |= ((Arg0 & 0x0E) << 0x03)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (((\_SB.IFFS.FFSS & 0x03) && (Arg0 & 0x02)))
                        {
                            Local0 |= 0x20
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        \_SB.PCI0.LPCB.EC0.IBT1 = Local0
                    }
                    Else
                    {
                        IBT1 = Local0
                    }
                }
            }

            Method (SASD, 1, NotSerialized)
            {
                If (((ICNF & 0x10) && (Arg0 > Zero)))
                {
                    If ((ITMR == One))
                    {
                        RCTM = Arg0
                    }
                    Else
                    {
                        ECTM = Arg0
                    }

                    If ((CondRefOf (\_SB.PCI0.LPCB.EC0.WTMS) && (PTSL == 0x03)))
                    {
                        \_SB.PCI0.LPCB.EC0.AWT0 = (ECTM & 0xFF)
                        \_SB.PCI0.LPCB.EC0.AWT1 = ((ECTM & 0xFF00) >> 0x08)
                        \_SB.PCI0.LPCB.EC0.AWT2 = ((ECTM & 0x00FF0000) >> 0x10)
                        Local0 = \_SB.PCI0.LPCB.EC0.WTMS
                        \_SB.PCI0.LPCB.EC0.WTMS = (0x81 | Local0)
                    }
                    Else
                    {
                        AWT0 = (ECTM & 0xFF)
                        AWT1 = ((ECTM & 0xFF00) >> 0x08)
                        AWT2 = ((ECTM & 0x00FF0000) >> 0x10)
                        Local0 = WTMS
                        WTMS = (0x81 | Local0)
                    }
                }
                Else
                {
                    If ((ITMR == One))
                    {
                        RCTM = Zero
                    }
                    Else
                    {
                        If (CondRefOf (\_SB.PCI0.LPCB.EC0.WTMS))
                        {
                            ECTM = Zero
                            \_SB.PCI0.LPCB.EC0.WTMS = Zero
                        }
                    }

                    SLPD = Arg0
                }
            }

            Method (GPWR, 0, NotSerialized)
            {
                If ((WKRS & 0x1F))
                {
                    Return (WKRS)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (GPCS, 0, NotSerialized)
            {
                If ((ITMR == Zero))
                {
                    If (\_SB.PCI0.LPCB.EC0.LIDT)
                    {
                        Local0 = Zero
                    }
                    Else
                    {
                        Local0 = One
                    }

                    Return (Local0)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (GAWD, 0, NotSerialized)
            {
                Return (IWDT)
            }

            Method (SAWD, 1, NotSerialized)
            {
                IWDT = Arg0
            }
        }
    }
}

