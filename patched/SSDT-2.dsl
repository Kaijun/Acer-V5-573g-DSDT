/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of acpi_ssdt2.aml, Fri Jun 17 15:50:13 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002EED (12013)
 *     Revision         0x01
 *     Checksum         0xCB
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("acpi_ssdt2.aml", "SSDT", 1, "ACRSYS", "ACRPRDCT", 0x00003000)
{
    /*
     * iASL Warning: There were 6 external control methods found during
     * disassembly, but only 3 were resolved (3 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods.
     *
     * If necessary, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (HDOS, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unresolved method, guessing 1 arguments
    External (IDAB, MethodObj)    // Warning: Unresolved method, guessing 0 arguments

    External (_SB_.BLVL, FieldUnitObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.CRBL, MethodObj)    // 0 Arguments
    External (_SB_.PEPD, UnknownObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (DSEN, FieldUnitObj)
    External (GUAM, MethodObj)    // 1 Arguments
    External (OSYS, FieldUnitObj)
    External (PNHM, FieldUnitObj)
    External (S0ID, FieldUnitObj)
    External (SCIS, FieldUnitObj)

    OperationRegion (SANV, SystemMemory, 0x9AFB7D98, 0x0141)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32, 
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        LIDS,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BBAR,   32, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        AUDA,   32, 
        AUDB,   32, 
        AUDC,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        CADR,   32, 
        CCNT,   8, 
        Offset (0xC8), 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        PWEN,   8, 
        PRST,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        XBAS,   32, 
        GBAS,   16, 
        SGGP,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        LTRA,   8, 
        OBFA,   8, 
        LTRB,   8, 
        OBFB,   8, 
        LTRC,   8, 
        OBFC,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        EDPV,   8, 
        NXDX,   32, 
        DIDX,   32, 
        PCSL,   8, 
        SC7A,   8
    }

    Scope (\_SB.PCI0)
    {
        Device (B0D3)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Name (BARA, 0x80000000)
            Name (TBAR, Zero)
            Name (TCMD, Zero)
            Name (MODB, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((AUVD != 0xFFFF))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((
                    ABAR & 0xFFFFC000) != Zero)))
                {
                    BARA = ABAR
                }
            }

            OperationRegion (RPCS, SystemMemory, \XBAS, 0x00018040)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x18004), 
                ACMD,   8, 
                Offset (0x18010), 
                ABAR,   32
            }

            OperationRegion (RPCZ, PCI_Config, Zero, 0x40)
            Field (RPCZ, DWordAcc, Lock, Preserve)
            {
                AUVD,   16
            }

            Method (ASTR, 0, Serialized)
            {
                If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((
                    ABAR & 0xFFFFC000) != Zero)))
                {
                    BBAR = (ABAR & 0xFFFFFFF0)
                    BBAR += 0x1000
                    OperationRegion (RPCY, SystemMemory, BBAR, 0x25)
                    Field (RPCY, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x0C), 
                        EM4W,   32, 
                        EMWA,   32, 
                        Offset (0x1C), 
                        ADWA,   32
                    }

                    EMWA = AUDA
                    ADWA = AUDB
                    EM4W = AUDC
                }
            }

            Method (VSTR, 1, Serialized)
            {
                Name (CONT, 0x03E8)
                Name (ADDR, 0x80000000)
                ADDR = Arg0
                OperationRegion (CCDC, SystemMemory, ADDR, 0x04)
                Field (CCDC, ByteAcc, NoLock, Preserve)
                {
                    CDEC,   32
                }

                If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((
                    ABAR & 0xFFFFC000) != Zero)))
                {
                    If ((CDEC != Zero))
                    {
                        BBAR = (ABAR & 0xFFFFFFF0)
                        OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                        Field (IPCV, DWordAcc, NoLock, Preserve)
                        {
                            Offset (0x60), 
                            AVIC,   32, 
                            Offset (0x68), 
                            AIRS,   16
                        }

                        CONT = 0x03E8
                        While ((((AIRS & One) == One) && (CONT != Zero)))
                        {
                            Stall (One)
                            CONT--
                        }

                        AIRS |= 0x02
                        AVIC = CDEC
                        AIRS |= One
                        CONT = 0x03E8
                        While ((((AIRS & One) == One) && (CONT != Zero)))
                        {
                            Stall (One)
                            CONT--
                        }
                    }
                }
            }

            Method (CXDC, 0, Serialized)
            {
                Name (IDDX, 0x80000000)
                If (((CADR != Zero) && (CCNT != Zero)))
                {
                    IDDX = CADR
                    While ((IDDX < (CADR + (CCNT * 0x04))))
                    {
                        VSTR (IDDX)
                        IDDX += 0x04
                    }
                }
            }

            Method (ARST, 0, Serialized)
            {
                If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((
                    ABAR & 0xFFFFC000) != Zero)))
                {
                    BBAR = (ABAR & 0xFFFFFFF0)
                    OperationRegion (IPCV, SystemMemory, BBAR, 0xBF)
                    Field (IPCV, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        CRST,   32, 
                        Offset (0x4C), 
                        CORB,   32, 
                        Offset (0x5C), 
                        RIRB,   32, 
                        Offset (0x80), 
                        OSD1,   32, 
                        Offset (0xA0), 
                        OSD2,   32
                    }

                    CORB &= 0xFFFFFFFD
                    RIRB &= 0xFFFFFFFD
                    OSD1 &= 0xFFFFFFFD
                    OSD2 &= 0xFFFFFFFD
                    CRST &= 0xFFFFFFFE
                }
            }

            Method (AINI, 0, Serialized)
            {
                Name (CONT, 0x03E8)
                If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((
                    ABAR & 0xFFFFC000) != Zero)))
                {
                    BBAR = (ABAR & 0xFFFFFFF0)
                    OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        GCAP,   16, 
                        Offset (0x08), 
                        GCTL,   32, 
                        Offset (0x0E), 
                        SSTS,   8, 
                        Offset (0x60), 
                        AVIC,   32, 
                        Offset (0x68), 
                        AIRS,   16
                    }

                    GCTL |= One
                    CONT = 0x03E8
                    While ((((GCTL & One) == Zero) && (CONT != Zero)))
                    {
                        Stall (One)
                        CONT--
                    }

                    GCAP &= 0xFFFF
                    SSTS |= 0x0F
                    GCTL &= 0xFFFFFFFE
                    CONT = 0x03E8
                    While ((((GCTL & One) == One) && (CONT != Zero)))
                    {
                        Stall (One)
                        CONT--
                    }

                    GCTL |= One
                    CONT = 0x03E8
                    While ((((GCTL & One) == Zero) && (CONT != Zero)))
                    {
                        Stall (One)
                        CONT--
                    }
                }
            }

            Method (ABWA, 1, Serialized)
            {
                If (Arg0)
                {
                    If ((((BARA & 0x80000000) != 0x80000000) && ((ABAR & 
                        0xFFFFC000) == Zero)))
                    {
                        TBAR = ABAR
                        TCMD = ACMD
                        ABAR = BARA
                        ACMD = 0x06
                        MODB = One
                    }
                }
                Else
                {
                    If (MODB)
                    {
                        If ((ABAR == BARA))
                        {
                            ABAR = TBAR
                            ACMD = TCMD
                        }
                    }
                }
            }
        }

        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PCI0.CRBL ()
                If ((OSYS < 0x07D6))
                {
                    \_SB.BLVL = 0x09
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("GFX0 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("GFX0 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("GFX0 DEP NULL")
                    Return (Package (0x00) {})
                }
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                DSEN = (Arg0 & 0x07)
                If (((Arg0 & 0x03) == Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (Zero)
                {
                    IDAB ()
                }
                Else
                {
                    NDID = Zero
                    If ((DIDL != Zero))
                    {
                        DID1 = SDDL (DIDL)
                    }

                    If ((DDL2 != Zero))
                    {
                        DID2 = SDDL (DDL2)
                    }

                    If ((DDL3 != Zero))
                    {
                        DID3 = SDDL (DDL3)
                    }

                    If ((DDL4 != Zero))
                    {
                        DID4 = SDDL (DDL4)
                    }

                    If ((DDL5 != Zero))
                    {
                        DID5 = SDDL (DDL5)
                    }

                    If ((DDL6 != Zero))
                    {
                        DID6 = SDDL (DDL6)
                    }

                    If ((DDL7 != Zero))
                    {
                        DID7 = SDDL (DDL7)
                    }

                    If ((DDL8 != Zero))
                    {
                        DID8 = SDDL (DDL8)
                    }

                    If ((DDL9 != Zero))
                    {
                        DID9 = SDDL (DDL9)
                    }

                    If ((DD10 != Zero))
                    {
                        DIDA = SDDL (DD10)
                    }

                    If ((DD11 != Zero))
                    {
                        DIDB = SDDL (DD11)
                    }

                    If ((DD12 != Zero))
                    {
                        DIDC = SDDL (DD12)
                    }

                    If ((DD13 != Zero))
                    {
                        DIDD = SDDL (DD13)
                    }

                    If ((DD14 != Zero))
                    {
                        DIDE = SDDL (DD14)
                    }

                    If ((DD15 != Zero))
                    {
                        DIDF = SDDL (DD15)
                    }
                }

                If ((NDID == One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        Ones
                    })
                    Index (TMP1, Zero) = (0x00010000 | DID1)
                    Return (TMP1)
                }

                If ((NDID == 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        Ones, 
                        Ones
                    })
                    Index (TMP2, Zero) = (0x00010000 | DID1)
                    Index (TMP2, One) = (0x00010000 | DID2)
                    Return (TMP2)
                }

                If ((NDID == 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMP3, Zero) = (0x00010000 | DID1)
                    Index (TMP3, One) = (0x00010000 | DID2)
                    Index (TMP3, 0x02) = (0x00010000 | DID3)
                    Return (TMP3)
                }

                If ((NDID == 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMP4, Zero) = (0x00010000 | DID1)
                    Index (TMP4, One) = (0x00010000 | DID2)
                    Index (TMP4, 0x02) = (0x00010000 | DID3)
                    Index (TMP4, 0x03) = (0x00010000 | DID4)
                    Return (TMP4)
                }

                If ((NDID == 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMP5, Zero) = (0x00010000 | DID1)
                    Index (TMP5, One) = (0x00010000 | DID2)
                    Index (TMP5, 0x02) = (0x00010000 | DID3)
                    Index (TMP5, 0x03) = (0x00010000 | DID4)
                    Index (TMP5, 0x04) = (0x00010000 | DID5)
                    Return (TMP5)
                }

                If ((NDID == 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMP6, Zero) = (0x00010000 | DID1)
                    Index (TMP6, One) = (0x00010000 | DID2)
                    Index (TMP6, 0x02) = (0x00010000 | DID3)
                    Index (TMP6, 0x03) = (0x00010000 | DID4)
                    Index (TMP6, 0x04) = (0x00010000 | DID5)
                    Index (TMP6, 0x05) = (0x00010000 | DID6)
                    Return (TMP6)
                }

                If ((NDID == 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMP7, Zero) = (0x00010000 | DID1)
                    Index (TMP7, One) = (0x00010000 | DID2)
                    Index (TMP7, 0x02) = (0x00010000 | DID3)
                    Index (TMP7, 0x03) = (0x00010000 | DID4)
                    Index (TMP7, 0x04) = (0x00010000 | DID5)
                    Index (TMP7, 0x05) = (0x00010000 | DID6)
                    Index (TMP7, 0x06) = (0x00010000 | DID7)
                    Return (TMP7)
                }

                If ((NDID == 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMP8, Zero) = (0x00010000 | DID1)
                    Index (TMP8, One) = (0x00010000 | DID2)
                    Index (TMP8, 0x02) = (0x00010000 | DID3)
                    Index (TMP8, 0x03) = (0x00010000 | DID4)
                    Index (TMP8, 0x04) = (0x00010000 | DID5)
                    Index (TMP8, 0x05) = (0x00010000 | DID6)
                    Index (TMP8, 0x06) = (0x00010000 | DID7)
                    Index (TMP8, 0x07) = (0x00010000 | DID8)
                    Return (TMP8)
                }

                If ((NDID == 0x09))
                {
                    Name (TMP9, Package (0x09)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMP9, Zero) = (0x00010000 | DID1)
                    Index (TMP9, One) = (0x00010000 | DID2)
                    Index (TMP9, 0x02) = (0x00010000 | DID3)
                    Index (TMP9, 0x03) = (0x00010000 | DID4)
                    Index (TMP9, 0x04) = (0x00010000 | DID5)
                    Index (TMP9, 0x05) = (0x00010000 | DID6)
                    Index (TMP9, 0x06) = (0x00010000 | DID7)
                    Index (TMP9, 0x07) = (0x00010000 | DID8)
                    Index (TMP9, 0x08) = (0x00010000 | DID9)
                    Return (TMP9)
                }

                If ((NDID == 0x0A))
                {
                    Name (TMPA, Package (0x0A)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMPA, Zero) = (0x00010000 | DID1)
                    Index (TMPA, One) = (0x00010000 | DID2)
                    Index (TMPA, 0x02) = (0x00010000 | DID3)
                    Index (TMPA, 0x03) = (0x00010000 | DID4)
                    Index (TMPA, 0x04) = (0x00010000 | DID5)
                    Index (TMPA, 0x05) = (0x00010000 | DID6)
                    Index (TMPA, 0x06) = (0x00010000 | DID7)
                    Index (TMPA, 0x07) = (0x00010000 | DID8)
                    Index (TMPA, 0x08) = (0x00010000 | DID9)
                    Index (TMPA, 0x09) = (0x00010000 | DIDA)
                    Return (TMPA)
                }

                If ((NDID == 0x0B))
                {
                    Name (TMPB, Package (0x0B)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMPB, Zero) = (0x00010000 | DID1)
                    Index (TMPB, One) = (0x00010000 | DID2)
                    Index (TMPB, 0x02) = (0x00010000 | DID3)
                    Index (TMPB, 0x03) = (0x00010000 | DID4)
                    Index (TMPB, 0x04) = (0x00010000 | DID5)
                    Index (TMPB, 0x05) = (0x00010000 | DID6)
                    Index (TMPB, 0x06) = (0x00010000 | DID7)
                    Index (TMPB, 0x07) = (0x00010000 | DID8)
                    Index (TMPB, 0x08) = (0x00010000 | DID9)
                    Index (TMPB, 0x09) = (0x00010000 | DIDA)
                    Index (TMPB, 0x0A) = (0x00010000 | DIDB)
                    Return (TMPB)
                }

                If ((NDID == 0x0C))
                {
                    Name (TMPC, Package (0x0C)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMPC, Zero) = (0x00010000 | DID1)
                    Index (TMPC, One) = (0x00010000 | DID2)
                    Index (TMPC, 0x02) = (0x00010000 | DID3)
                    Index (TMPC, 0x03) = (0x00010000 | DID4)
                    Index (TMPC, 0x04) = (0x00010000 | DID5)
                    Index (TMPC, 0x05) = (0x00010000 | DID6)
                    Index (TMPC, 0x06) = (0x00010000 | DID7)
                    Index (TMPC, 0x07) = (0x00010000 | DID8)
                    Index (TMPC, 0x08) = (0x00010000 | DID9)
                    Index (TMPC, 0x09) = (0x00010000 | DIDA)
                    Index (TMPC, 0x0A) = (0x00010000 | DIDB)
                    Index (TMPC, 0x0B) = (0x00010000 | DIDC)
                    Return (TMPC)
                }

                If ((NDID == 0x0D))
                {
                    Name (TMPD, Package (0x0D)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMPD, Zero) = (0x00010000 | DID1)
                    Index (TMPD, One) = (0x00010000 | DID2)
                    Index (TMPD, 0x02) = (0x00010000 | DID3)
                    Index (TMPD, 0x03) = (0x00010000 | DID4)
                    Index (TMPD, 0x04) = (0x00010000 | DID5)
                    Index (TMPD, 0x05) = (0x00010000 | DID6)
                    Index (TMPD, 0x06) = (0x00010000 | DID7)
                    Index (TMPD, 0x07) = (0x00010000 | DID8)
                    Index (TMPD, 0x08) = (0x00010000 | DID9)
                    Index (TMPD, 0x09) = (0x00010000 | DIDA)
                    Index (TMPD, 0x0A) = (0x00010000 | DIDB)
                    Index (TMPD, 0x0B) = (0x00010000 | DIDC)
                    Index (TMPD, 0x0C) = (0x00010000 | DIDD)
                    Return (TMPD)
                }

                If ((NDID == 0x0E))
                {
                    Name (TMPE, Package (0x0E)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMPE, Zero) = (0x00010000 | DID1)
                    Index (TMPE, One) = (0x00010000 | DID2)
                    Index (TMPE, 0x02) = (0x00010000 | DID3)
                    Index (TMPE, 0x03) = (0x00010000 | DID4)
                    Index (TMPE, 0x04) = (0x00010000 | DID5)
                    Index (TMPE, 0x05) = (0x00010000 | DID6)
                    Index (TMPE, 0x06) = (0x00010000 | DID7)
                    Index (TMPE, 0x07) = (0x00010000 | DID8)
                    Index (TMPE, 0x08) = (0x00010000 | DID9)
                    Index (TMPE, 0x09) = (0x00010000 | DIDA)
                    Index (TMPE, 0x0A) = (0x00010000 | DIDB)
                    Index (TMPE, 0x0B) = (0x00010000 | DIDC)
                    Index (TMPE, 0x0C) = (0x00010000 | DIDD)
                    Index (TMPE, 0x0D) = (0x00010000 | DIDE)
                    Return (TMPE)
                }

                If ((NDID == 0x0F))
                {
                    Name (TMPF, Package (0x0F)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Index (TMPF, Zero) = (0x00010000 | DID1)
                    Index (TMPF, One) = (0x00010000 | DID2)
                    Index (TMPF, 0x02) = (0x00010000 | DID3)
                    Index (TMPF, 0x03) = (0x00010000 | DID4)
                    Index (TMPF, 0x04) = (0x00010000 | DID5)
                    Index (TMPF, 0x05) = (0x00010000 | DID6)
                    Index (TMPF, 0x06) = (0x00010000 | DID7)
                    Index (TMPF, 0x07) = (0x00010000 | DID8)
                    Index (TMPF, 0x08) = (0x00010000 | DID9)
                    Index (TMPF, 0x09) = (0x00010000 | DIDA)
                    Index (TMPF, 0x0A) = (0x00010000 | DIDB)
                    Index (TMPF, 0x0B) = (0x00010000 | DIDC)
                    Index (TMPF, 0x0C) = (0x00010000 | DIDD)
                    Index (TMPF, 0x0D) = (0x00010000 | DIDE)
                    Index (TMPF, 0x0E) = (0x00010000 | DIDF)
                    Return (TMPF)
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID1) == 0x0400))
                    {
                        EDPV = One
                        NXDX = NXD1
                        DIDX = DID1
                        Return (One)
                    }

                    If ((DID1 == Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD1)
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID2) == 0x0400))
                    {
                        EDPV = 0x02
                        NXDX = NXD2
                        DIDX = DID2
                        Return (0x02)
                    }

                    If ((DID2 == Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((LIDS == Zero))
                    {
                        Return (Zero)
                    }

                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD2)
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID3) == 0x0400))
                    {
                        EDPV = 0x03
                        NXDX = NXD3
                        DIDX = DID3
                        Return (0x03)
                    }

                    If ((DID3 == Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID3 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD3)
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID4) == 0x0400))
                    {
                        EDPV = 0x04
                        NXDX = NXD4
                        DIDX = DID4
                        Return (0x04)
                    }

                    If ((DID4 == Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID4 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD4)
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID5) == 0x0400))
                    {
                        EDPV = 0x05
                        NXDX = NXD5
                        DIDX = DID5
                        Return (0x05)
                    }

                    If ((DID5 == Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID5 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD5)
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID6) == 0x0400))
                    {
                        EDPV = 0x06
                        NXDX = NXD6
                        DIDX = DID6
                        Return (0x06)
                    }

                    If ((DID6 == Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID6 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD6)
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID7) == 0x0400))
                    {
                        EDPV = 0x07
                        NXDX = NXD7
                        DIDX = DID7
                        Return (0x07)
                    }

                    If ((DID7 == Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID7 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD7)
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID8) == 0x0400))
                    {
                        EDPV = 0x08
                        NXDX = NXD8
                        DIDX = DID8
                        Return (0x08)
                    }

                    If ((DID8 == Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID8 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD09)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID9) == 0x0400))
                    {
                        EDPV = 0x09
                        NXDX = NXD8
                        DIDX = DID9
                        Return (0x09)
                    }

                    If ((DID9 == Zero))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID9))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID9 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID9))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DID9))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD0A)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DIDA) == 0x0400))
                    {
                        EDPV = 0x0A
                        NXDX = NXD8
                        DIDX = DIDA
                        Return (0x0A)
                    }

                    If ((DIDA == Zero))
                    {
                        Return (0x0A)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDA))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DIDA == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DIDA))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDA))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD0B)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DIDB) == 0x0400))
                    {
                        EDPV = 0x0B
                        NXDX = NXD8
                        DIDX = DIDB
                        Return (0x0B)
                    }

                    If ((DIDB == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDB))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DIDB == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DIDB))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDB))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD0C)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DIDC) == 0x0400))
                    {
                        EDPV = 0x0C
                        NXDX = NXD8
                        DIDX = DIDC
                        Return (0x0C)
                    }

                    If ((DIDC == Zero))
                    {
                        Return (0x0C)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDC))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DIDC == Zero))
                    {
                        Return (0x0C)
                    }
                    Else
                    {
                        Return (CDDS (DIDC))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDC))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD0D)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DIDD) == 0x0400))
                    {
                        EDPV = 0x0D
                        NXDX = NXD8
                        DIDX = DIDD
                        Return (0x0D)
                    }

                    If ((DIDD == Zero))
                    {
                        Return (0x0D)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDD))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DIDD == Zero))
                    {
                        Return (0x0D)
                    }
                    Else
                    {
                        Return (CDDS (DIDD))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDD))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD0E)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DIDE) == 0x0400))
                    {
                        EDPV = 0x0E
                        NXDX = NXD8
                        DIDX = DIDE
                        Return (0x0E)
                    }

                    If ((DIDE == Zero))
                    {
                        Return (0x0E)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDE))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DIDE == Zero))
                    {
                        Return (0x0E)
                    }
                    Else
                    {
                        Return (CDDS (DIDE))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDE))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD0F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DIDF) == 0x0400))
                    {
                        EDPV = 0x0F
                        NXDX = NXD8
                        DIDX = DIDF
                        Return (0x0F)
                    }

                    If ((DIDF == Zero))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDF))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DIDC == Zero))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (CDDS (DIDF))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDF))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }
            }

            Device (DD1F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((EDPV == Zero))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDX))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((EDPV == Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (CDDS (DIDX))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXDX)
                    }

                    Return (NDDS (DIDX))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    If ((OSYS >= 0x07DC))
                    {
                        Return (Package (0x67)
                        {
                            0x64, 
                            0x1E, 
                            Zero, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50, 
                            0x51, 
                            0x52, 
                            0x53, 
                            0x54, 
                            0x55, 
                            0x56, 
                            0x57, 
                            0x58, 
                            0x59, 
                            0x5A, 
                            0x5B, 
                            0x5C, 
                            0x5D, 
                            0x5E, 
                            0x5F, 
                            0x60, 
                            0x61, 
                            0x62, 
                            0x63, 
                            0x64
                        })
                    }
                    Else
                    {
                        Return (Package (0x0C)
                        {
                            0x64, 
                            0x1E, 
                            0x0A, 
                            0x14, 
                            0x1E, 
                            0x28, 
                            0x32, 
                            0x3C, 
                            0x46, 
                            0x50, 
                            0x5A, 
                            0x64
                        })
                    }
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        \_SB.PCI0.GFX0.AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL)
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                NDID++
                Local0 = (Arg0 & 0x0F0F)
                Local1 = (0x80000000 | Local0)
                If ((DIDL == Local0))
                {
                    Return (Local1)
                }

                If ((DDL2 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL3 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL4 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL5 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL6 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL7 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL8 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL9 == Local0))
                {
                    Return (Local1)
                }

                If ((DD10 == Local0))
                {
                    Return (Local1)
                }

                If ((DD11 == Local0))
                {
                    Return (Local1)
                }

                If ((DD12 == Local0))
                {
                    Return (Local1)
                }

                If ((DD13 == Local0))
                {
                    Return (Local1)
                }

                If ((DD14 == Local0))
                {
                    Return (Local1)
                }

                If ((DD15 == Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If ((Zero == Local0))
                {
                    Return (0x1D)
                }

                If ((CADL == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL2 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL3 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL4 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL5 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL6 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL7 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL8 == Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If ((Zero == Local0))
                {
                    Return (Zero)
                }

                If ((NADL == Local0))
                {
                    Return (One)
                }

                If ((NDL2 == Local0))
                {
                    Return (One)
                }

                If ((NDL3 == Local0))
                {
                    Return (One)
                }

                If ((NDL4 == Local0))
                {
                    Return (One)
                }

                If ((NDL5 == Local0))
                {
                    Return (One)
                }

                If ((NDL6 == Local0))
                {
                    Return (One)
                }

                If ((NDL7 == Local0))
                {
                    Return (One)
                }

                If ((NDL8 == Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Scope (\_SB.PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x14), 
                    AUDE,   8, 
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                PCON,   32, 
                DVER,   64, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                DDL9,   32, 
                DD10,   32, 
                DD11,   32, 
                DD12,   32, 
                DD13,   32, 
                DD14,   32, 
                DD15,   32, 
                CPL9,   32, 
                CP10,   32, 
                CP11,   32, 
                CP12,   32, 
                CP13,   32, 
                CP14,   32, 
                CP15,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BLM0,   16, 
                BLM1,   16, 
                BLM2,   16, 
                BLM3,   16, 
                BLM4,   16, 
                BLM5,   16, 
                BLM6,   16, 
                BLM7,   16, 
                BLM8,   16, 
                BLM9,   16, 
                BLMX,   160, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                SROT,   32, 
                IUER,   32, 
                FDSP,   64, 
                FDSS,   32, 
                STAT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If ((GESF == Zero))
                    {
                        PARM = 0x0659
                        GESF = Zero
                        Return (SUCC)
                    }

                    If ((GESF == One))
                    {
                        PARM = 0x00300482
                        If ((S0ID == One))
                        {
                            PARM |= 0x0100
                        }

                        GESF = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x04))
                    {
                        PARM &= 0xEFFF0000
                        PARM &= (DerefOf (Index (DBTB, IBTT)) << 0x10)
                        PARM |= IBTT
                        GESF = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x05))
                    {
                        PARM = IPSC
                        PARM |= (IPAT << 0x08)
                        PARM += 0x0100
                        PARM |= (LIDS << 0x10)
                        PARM += 0x00010000
                        PARM |= (IBIA << 0x14)
                        GESF = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x07))
                    {
                        PARM = GIVD
                        PARM ^= One
                        PARM |= (GMFN << One)
                        PARM |= 0x1800
                        PARM |= (IDMS << 0x11)
                        PARM |= (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)) << 
                            0x15)
                        GESF = One
                        Return (SUCC)
                    }

                    If ((GESF == 0x0A))
                    {
                        PARM = Zero
                        If (ISSC)
                        {
                            PARM |= 0x03
                        }

                        GESF = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x0B))
                    {
                        PARM = KSV0
                        GESF = KSV1
                        Return (SUCC)
                    }

                    GESF = Zero
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If ((GESF == Zero))
                    {
                        PARM = Zero
                        PARM = 0x000F87DD
                        GESF = Zero
                        Return (SUCC)
                    }

                    If ((GESF == One))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x03))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x04))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x05))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x07))
                    {
                        If ((S0ID == One))
                        {
                            If (((PARM & 0xFF) == One))
                            {
                                \GUAM (One)
                            }
                        }

                        If ((PARM == Zero))
                        {
                            Local0 = CLID
                            If ((0x80000000 & Local0))
                            {
                                CLID &= 0x0F
                                GLID (CLID)
                            }
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x08))
                    {
                        If ((S0ID == One))
                        {
                            Local0 = ((PARM >> 0x08) & 0xFF)
                            If ((Local0 == Zero))
                            {
                                \GUAM (Zero)
                            }
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x09))
                    {
                        IBTT = (PARM & 0xFF)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x0A))
                    {
                        IPSC = (PARM & 0xFF)
                        If (((PARM >> 0x08) & 0xFF))
                        {
                            IPAT = ((PARM >> 0x08) & 0xFF)
                            IPAT--
                        }

                        IBIA = ((PARM >> 0x14) & 0x07)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x0B))
                    {
                        IF1E = ((PARM >> One) & One)
                        If ((PARM & 0x0001E000))
                        {
                            IDMS = ((PARM >> 0x0D) & 0x0F)
                        }
                        Else
                        {
                            IDMS = ((PARM >> 0x11) & 0x0F)
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x10))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x11))
                    {
                        PARM = (LIDS << 0x08)
                        PARM += 0x0100
                        GESF = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x12))
                    {
                        If ((PARM & One))
                        {
                            If (((PARM >> One) == One))
                            {
                                ISSC = One
                            }
                            Else
                            {
                                GESF = Zero
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            ISSC = Zero
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x13))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x14))
                    {
                        PAVP = (PARM & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    If ((GESF == 0x15))
                    {
                        If ((PARM == One))
                        {
                            \_SB.PCI0.AUDE |= 0x20
                            \_SB.PCI0.B0D3.ARST ()
                            \_SB.PCI0.B0D3.ABWA (One)
                            \_SB.PCI0.B0D3.ASTR ()
                            \_SB.PCI0.B0D3.AINI ()
                            \_SB.PCI0.B0D3.CXDC ()
                            \_SB.PCI0.B0D3.ABWA (Zero)
                            Notify (\_SB.PCI0, Zero)
                        }

                        If ((PARM == Zero))
                        {
                            \_SB.PCI0.AUDE &= 0xDF
                            Notify (\_SB.PCI0, Zero)
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC)
                    }

                    GESF = Zero
                    Return (SUCC)
                }

                If ((GEFC == 0x04))
                {
                    GXFC = GBDA ()
                }

                If ((GEFC == 0x06))
                {
                    GXFC = SBCB ()
                }

                GEFC = Zero
                SCIS = One
                GSSE = Zero
                SCIE = Zero
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                Return (!DRDY)
            }

            Method (PSTS, 0, NotSerialized)
            {
                If ((CSTS > 0x02))
                {
                    Sleep (ASLP)
                }

                Return ((CSTS == 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                CEVT = Arg0
                CSTS = 0x03
                If (((CHPD == Zero) && (Arg1 == Zero)))
                {
                    If (((OSYS > 0x07D0) || (OSYS < 0x07D6)))
                    {
                        Notify (\_SB.PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.GFX0, Arg1)
                    }
                }

                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (\_SB.PCI0.GFX0, 0x80)
                }

                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                TIDX = Arg0
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    CLID = 0x03
                }
                Else
                {
                    CLID = Arg0
                }

                If (GNOT (0x02, Zero))
                {
                    CLID |= 0x80000000
                    Return (One)
                }

                Return (Zero)
            }

            Method (GDCK, 1, NotSerialized)
            {
                CDCK = Arg0
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (!ARDY)
                {
                    Sleep (ASLP)
                }

                Return (!ARDY)
            }

            Method (IUEH, 1, Serialized)
            {
                IUER &= 0xC0
                IUER ^= (One << Arg0)
                If ((Arg0 <= 0x04))
                {
                    Return (AINT (0x05, Zero))
                }
                Else
                {
                    Return (AINT (Arg0, Zero))
                }
            }

            Method (AINT, 2, NotSerialized)
            {
                If (!(TCHE & (One << Arg0)))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (((Arg0 >= 0x05) && (Arg0 <= 0x07)))
                {
                    ASLC = (One << Arg0)
                    ASLE = One
                    Local2 = Zero
                    While (((Local2 < 0xFA) && (ASLC != Zero)))
                    {
                        Sleep (0x04)
                        Local2++
                    }

                    Return (Zero)
                }

                If ((Arg0 == 0x02))
                {
                    If (CPFM)
                    {
                        Local0 = (CPFM & 0x0F)
                        Local1 = (EPFM & 0x0F)
                        If ((Local0 == One))
                        {
                            If ((Local1 & 0x06))
                            {
                                PFIT = 0x06
                            }
                            Else
                            {
                                If ((Local1 & 0x08))
                                {
                                    PFIT = 0x08
                                }
                                Else
                                {
                                    PFIT = One
                                }
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            If ((Local1 & 0x08))
                            {
                                PFIT = 0x08
                            }
                            Else
                            {
                                If ((Local1 & One))
                                {
                                    PFIT = One
                                }
                                Else
                                {
                                    PFIT = 0x06
                                }
                            }
                        }

                        If ((Local0 == 0x08))
                        {
                            If ((Local1 & One))
                            {
                                PFIT = One
                            }
                            Else
                            {
                                If ((Local1 & 0x06))
                                {
                                    PFIT = 0x06
                                }
                                Else
                                {
                                    PFIT = 0x08
                                }
                            }
                        }
                    }
                    Else
                    {
                        PFIT ^= 0x07
                    }

                    PFIT |= 0x80000000
                    ASLC = 0x04
                }
                Else
                {
                    If ((Arg0 == One))
                    {
                        BCLP = ((Arg1 * 0xFF) / 0x64)
                        BCLP |= 0x80000000
                        ASLC = 0x02
                    }
                    Else
                    {
                        If ((Arg0 == Zero))
                        {
                            ALSI = Arg1
                            ASLC = One
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                ASLE = One
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If ((OVER != Zero))
                {
                    Return (!GSMI)
                }

                Return (Zero)
            }

            Device (\_SB.MEM2)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS2, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40004000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (IGDS)
                    {
                        If ((PNHM == 0x000306C1))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (CRS2)
                }
            }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "AAPL,ig-platform-id", Buffer() { 0x06, 0x00, 0x26, 0x0a },
                    "hda-gfx", Buffer() { "onboard-1" },
                })
            }
        }
    }
}

