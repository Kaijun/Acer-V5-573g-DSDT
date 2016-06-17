/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of acpi_ssdt0.aml, Fri Jun 17 15:50:13 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002CA9 (11433)
 *     Revision         0x01
 *     Checksum         0x8F
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("acpi_ssdt0.aml", "SSDT", 1, "ACRSYS", "ACRPRDCT", 0x00001000)
{

    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (_SB_.OSCO, IntObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.CADL, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL2, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL3, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL4, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL5, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL6, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL7, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL8, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPDL, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL2, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL3, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL4, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL5, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL6, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL7, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL8, FieldUnitObj)
    External (_SB_.PCI0.GFX0.DD01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD01._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCL, IntObj)
    External(_SB_.PCI0.GFX0.DD02._BCM,MethodObj)
    External (_SB_.PCI0.GFX0.DD02._BQC, IntObj)
    External (_SB_.PCI0.GFX0.DD02._DCS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD03._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD03._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD04._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD05._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD05._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD06._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD06._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD07._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD07._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD08._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD08._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.CTMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.GPSW, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.SCTB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.VGAF, FieldUnitObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.VSSD, FieldUnitObj)
    External (DID1, FieldUnitObj)
    External (DID2, FieldUnitObj)
    External (DID4, FieldUnitObj)
    External (OPTF, FieldUnitObj)
    External (P8XH, MethodObj)    // 3 Arguments
    External (PEBS, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PCI0.RP05)
    {
        Device (PEGP)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        OperationRegion (VBOR, SystemMemory, 0x9AF9C018, 0x00017C04)
        Field (VBOR, DWordAcc, Lock, Preserve)
        {
            RVBS,   32, 
            VBS1,   262144, 
            VBS2,   262144, 
            VBS3,   253952, 
            VBS4,   0
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        OperationRegion (SGOP, SystemMemory, 0x9AFBDD98, 0x00000055)
        Field (SGOP, AnyAcc, Lock, Preserve)
        {
            EBAS,   32, 
            CPSP,   32, 
            EECP,   32, 
            EVCP,   32, 
            XBAS,   32, 
            DBPA,   32, 
            SGGP,   8, 
            SGMD,   8, 
            SGFL,   8, 
            PWOK,   8, 
            HLRS,   8, 
            DSEL,   8, 
            ESEL,   8, 
            PSEL,   8, 
            PWEN,   8, 
            VRON,   8, 
            PRST,   8, 
            MXD1,   32, 
            MXD2,   32, 
            MXD3,   32, 
            MXD4,   32, 
            MXD5,   32, 
            MXD6,   32, 
            MXD7,   32, 
            MXD8,   32, 
            GBAS,   16, 
            APDT,   32, 
            AVDT,   32, 
            AHDT,   32, 
            IHDT,   32
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        OperationRegion (NOPR, SystemMemory, 0x9AF9A018, 0x00001014)
        Field (NOPR, AnyAcc, Lock, Preserve)
        {
            PBCM,   8, 
            GPSS,   32, 
            GACD,   16, 
            GATD,   16, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            SGNC,   8, 
            GPPO,   8, 
            GPSP,   8, 
            DOSF,   8, 
            MXBS,   32, 
            MXMB,   32768
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
        Device (WMI1)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, "MXM2")  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0x06, 0x80, 0x84, 0x42, 0x86, 0x88, 0x0E, 0x49,
                /* 0008 */  0x8C, 0x72, 0x2B, 0xDC, 0xA9, 0x3A, 0x8A, 0x09,
                /* 0010 */  0xDB, 0x00, 0x01, 0x08, 0x62, 0xDE, 0x6B, 0xE0,
                /* 0018 */  0x75, 0xEE, 0xF4, 0x48, 0xA5, 0x83, 0xB2, 0x3E,
                /* 0020 */  0x69, 0xAB, 0xF8, 0x91, 0x80, 0x00, 0x01, 0x08,
                /* 0028 */  0x0F, 0xBD, 0xDE, 0x3A, 0x5F, 0x0C, 0xED, 0x46,
                /* 0030 */  0xAB, 0x2E, 0x04, 0x96, 0x2B, 0x4F, 0xDC, 0xBC,
                /* 0038 */  0x81, 0x00, 0x01, 0x08, 0x11, 0x93, 0x51, 0x1E,
                /* 0040 */  0x75, 0x3E, 0x08, 0x42, 0xB0, 0x5E, 0xEB, 0xE1,
                /* 0048 */  0x7E, 0x3F, 0xF4, 0x1F, 0x86, 0x00, 0x01, 0x08,
                /* 0050 */  0x41, 0x53, 0xF8, 0x37, 0x18, 0x44, 0x24, 0x4F,
                /* 0058 */  0x85, 0x33, 0x38, 0xFF, 0xC7, 0x29, 0x55, 0x42,
                /* 0060 */  0x87, 0x00, 0x01, 0x08                         
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If ((FUNC == 0x4D53445F))
                {
                    If ((SizeOf (Arg2) >= 0x1C))
                    {
                        CreateField (Arg2, Zero, 0x80, MUID)
                        CreateDWordField (Arg2, 0x10, REVI)
                        CreateDWordField (Arg2, 0x14, SFNC)
                        CreateField (Arg2, 0xE0, 0x20, XRG0)
                        If ((Arg1 != 0x10))
                        {
                            Return (\_SB.PCI0.GFX0._DSM (MUID, REVI, SFNC, XRG0))
                        }
                    }
                }
                Else
                {
                    If ((FUNC == 0x584D584D))
                    {
                        CreateDWordField (Arg2, 0x08, XRG1)
                        If ((Arg1 == 0x10))
                        {
                            Return (\_SB.PCI0.GFX0.MXMX (XRG1))
                        }
                        Else
                        {
                            Return (\_SB.PCI0.RP05.PEGP.MXMX (XRG1))
                        }
                    }
                    Else
                    {
                        If ((FUNC == 0x5344584D))
                        {
                            CreateDWordField (Arg2, 0x08, XRG2)
                            If ((Arg1 == 0x10))
                            {
                                Return (\_SB.PCI0.GFX0.MXDS (XRG2))
                            }
                            Else
                            {
                                Return (\_SB.PCI0.RP05.PEGP.MXDS (XRG2))
                            }
                        }
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

    Scope (\_SB.PCI0.RP05)
    {
        OperationRegion (RPCI, PCI_Config, Zero, 0xF0)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            Offset (0x50), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1
        }

        OperationRegion (RPCX, SystemMemory, \_SB.PCI0.RP05.PEGP.DBPA, 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            Offset (0x328), 
                ,   19, 
            LNKS,   4
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        OperationRegion (VGAR, SystemMemory, \_SB.PCI0.RP05.PEGP.EBAS, 0x0100)
        Field (VGAR, DWordAcc, NoLock, Preserve)
        {
            VREG,   2048
        }

        Name (VGAB, Buffer (0x0100)
        {
             0x00                                           
        })
        OperationRegion (PCAP, PCI_Config, \_SB.PCI0.RP05.PEGP.EECP, 0x14)
        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTL,   16
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            \_SB.PCI0.RP05.PEGP._ADR = Zero
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            SGPO (HLRS, One)
            SGPO (PWEN, One)
            Local0 = Zero
            While ((Local0 < 0x0F))
            {
                Local0 += One
                Stall (0x64)
            }

            SGPO (VRON, One)
            Local0 = Zero
            While ((Local0 < 0x1E))
            {
                Local0 += One
                Stall (0x64)
            }

            SGPO (HLRS, Zero)
            Sleep (IHDT)
            LNKD = Zero
            While ((LNKS < 0x07))
            {
                Sleep (One)
            }

            VREG = VGAB
            LCTL = ((ELCT & 0x43) | (LCTL & 0xFFBC))
            \_SB.PCI0.LPCB.EC0.SCTB ()
            \_SB.PCI0.LPCB.EC0.VGAF = One
            Return (One)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            ELCT = LCTL
            VGAB = VREG
            LNKD = One
            While ((LNKS != Zero))
            {
                Sleep (One)
            }

            SGPO (HLRS, One)
            SGPO (VRON, Zero)
            SGPO (PWEN, Zero)
            \_SB.PCI0.LPCB.EC0.SCTB ()
            \_SB.PCI0.LPCB.EC0.VGAF = Zero
            Return (Zero)
        }

        Method (_STA, 0, Serialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            Return (Package (0x01)
            {
                0x80087330
            })
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD01._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD01._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD02._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (\_SB.PCI0.GFX0.DD02._DCS ())
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD02._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (\_SB.PCI0.GFX0.DD02._BCL)
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.GFX0.DD02._BQC)
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                Return(\_SB.PCI0.GFX0.DD02._BCM(Arg0))
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD03._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD03._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD04)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD04._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD04._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD05)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD05._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD05._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD06)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD06._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD06._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD07)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD07._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD07._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD08)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD08._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD08._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Method (SGPI, 1, Serialized)
        {
            Local1 = (Arg0 >> 0x07)
            Arg0 &= 0x7F
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((\_SB.PCI0.RP05.PEGP.GBAS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x08)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                        ,   30, 
                    TEMP,   1
                }

                Local2 = TEMP
            }

            If ((Local1 == Zero))
            {
                Local2 = ~Local2
            }

            Return ((Local2 & One))
        }

        Method (SGPO, 2, Serialized)
        {
            Local1 = (Arg0 >> 0x07)
            Arg0 &= 0x7F
            If ((Local1 == Zero))
            {
                Arg1 = ~Arg1
            }

            Arg1 &= One
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((\_SB.PCI0.RP05.PEGP.GBAS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x08)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                        ,   31, 
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (MXMX, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.ESEL, Zero)
                P8XH (One, 0x77, One)
                P8XH (Zero, Zero, One)
                Return (One)
            }

            If ((Arg0 == One))
            {
                P8XH (One, 0x77, One)
                P8XH (Zero, One, One)
                Return (One)
            }

            If ((Arg0 == 0x02))
            {
                P8XH (One, 0x77, One)
                P8XH (Zero, 0x02, One)
                Return (!\_SB.PCI0.RP05.PEGP.SGPI (\_SB.PCI0.RP05.PEGP.ESEL))
            }

            Return (Zero)
        }

        Method (MXDS, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (!\_SB.PCI0.RP05.PEGP.SGPI (\_SB.PCI0.RP05.PEGP.DSEL))
            }

            If ((Arg0 == One))
            {
                \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.DSEL, Zero)
            }

            Return (Zero)
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
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Local0 = (Arg2 & 0xFF)
            If ((Arg0 == ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Return (\_SB.PCI0.RP05.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("9d95a0a0-0060-4d48-b34d-7e5fea129fd4")))
            {
                Return (0x80000002)
            }
        }
    }

    Name (BDFR, 0x000F804C)
    Name (GPLS, Zero)
    OperationRegion (GPCR, SystemMemory, BDFR |= PEBS, One)
    Field (GPCR, AnyAcc, NoLock, Preserve)
    {
        GPCT,   1
    }

    OperationRegion (APMR, SystemIO, 0xB2, 0x02)
    Field (APMR, WordAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMS,   8
    }

    Name (BDF2, 0xDC)
    OperationRegion (SKPR, SystemMemory, BDF2 |= PEBS, 0x04)
    Field (SKPR, AnyAcc, NoLock, Preserve)
    {
        SKPD,   32
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        Name (GESC, Zero)
        Method (GPS, 4, Serialized)
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If ((Arg1 != 0x0100))
            {
                Return (0x80000002)
            }

            While (One)
            {
                _T_0 = ToInteger (Arg2)
                If ((_T_0 == Zero))
                {
                    Return (Buffer (0x08)
                    {
                         0x01, 0x00, 0x08, 0x00, 0x0F, 0x04, 0x00, 0x00 
                    })
                }
                Else
                {
                    If ((_T_0 == 0x13))
                    {
                        Local1 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                         
                            }
                        CreateBitField (Local1, 0x02, PSTE)
                        PSTE = One
                        \_SB.PCI0.LPCB.EC0.GPSW = Zero
                        Return (Local1)
                    }
                    Else
                    {
                        If ((_T_0 == 0x20))
                        {
                            CreateBitField (Arg3, 0x18, NRIT)
                            CreateBitField (Arg3, 0x19, RITS)
                            CreateField (Arg3, 0x1A, 0x03, PSTS)
                            CreateBitField (Arg3, 0x1D, NPSS)
                            CreateBitField (Arg3, 0x1E, PSES)
                            Name (GB32, Buffer (0x04)
                            {
                                 0x00                                           
                            })
                            CreateBitField (GB32, Zero, SPLU)
                            CreateBitField (GB32, One, PSLS)
                            CreateBitField (GB32, 0x02, NPBI)
                            CreateBitField (GB32, 0x18, CITS)
                            CreateBitField (GB32, 0x1E, PSER)
                            If (RITS)
                            {
                                If (NRIT)
                                {
                                    CITS = One
                                }
                                Else
                                {
                                    CITS = Zero
                                }
                            }

                            CITS = One
                            PSER = One
                            If (GESC)
                            {
                                SPLU = One
                            }

                            Return (GB32)
                        }
                        Else
                        {
                            If ((_T_0 == 0x21))
                            {
                                Return (\_PR.CPU0._PSS)
                            }
                            Else
                            {
                                If ((_T_0 == 0x22))
                                {
                                    CreateByteField (Arg3, Zero, NPPC)
                                    \_PR.CPU0._PPC = NPPC
                                    If ((TCNT == 0x08))
                                    {
                                        Notify (\_PR.CPU0, 0x80)
                                        Notify (\_PR.CPU1, 0x80)
                                        Notify (\_PR.CPU2, 0x80)
                                        Notify (\_PR.CPU3, 0x80)
                                        Notify (\_PR.CPU4, 0x80)
                                        Notify (\_PR.CPU5, 0x80)
                                        Notify (\_PR.CPU6, 0x80)
                                        Notify (\_PR.CPU7, 0x80)
                                    }

                                    If ((TCNT == 0x04))
                                    {
                                        Notify (\_PR.CPU0, 0x80)
                                        Notify (\_PR.CPU1, 0x80)
                                        Notify (\_PR.CPU2, 0x80)
                                        Notify (\_PR.CPU3, 0x80)
                                    }

                                    If ((TCNT == 0x02))
                                    {
                                        Notify (\_PR.CPU0, 0x80)
                                        Notify (\_PR.CPU1, 0x80)
                                    }
                                    Else
                                    {
                                        Notify (\_PR.CPU0, 0x80)
                                    }

                                    Return (Zero)
                                }
                                Else
                                {
                                    If ((_T_0 == 0x23))
                                    {
                                        Return (\_PR.CPU0._PPC)
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x2A))
                                        {
                                            CreateByteField (Arg3, Zero, QUTP)
                                            CreateBitField (Arg3, 0x08, GPUT)
                                            CreateBitField (Arg3, 0x09, CPUT)
                                            CreateBitField (Arg3, 0x0A, FANS)
                                            CreateBitField (Arg3, 0x0B, SKIN)
                                            CreateBitField (Arg3, 0x0C, CENG)
                                            CreateBitField (Arg3, 0x0D, SEN1)
                                            CreateBitField (Arg3, 0x0E, SEN2)
                                            Name (GB42, Buffer (0x24)
                                            {
                                                 0x00                                           
                                            })
                                            CreateDWordField (GB42, Zero, STSV)
                                            CreateDWordField (GB42, 0x04, VERS)
                                            CreateDWordField (GB42, 0x08, TGPU)
                                            CreateDWordField (GB42, 0x0C, PDTS)
                                            CreateDWordField (GB42, 0x10, SFAN)
                                            CreateDWordField (GB42, 0x14, SKNT)
                                            CreateDWordField (GB42, 0x18, CPUE)
                                            CreateDWordField (GB42, 0x1C, TMP1)
                                            CreateDWordField (GB42, 0x20, TMP2)
                                            VERS = 0x00010000
                                            While (One)
                                            {
                                                _T_1 = QUTP
                                                If ((_T_1 == Zero))
                                                {
                                                    If (CPUT)
                                                    {
                                                        STSV = 0x0200
                                                        STSV |= QUTP
                                                        PDTS = \_SB.PCI0.LPCB.EC0.CTMP
                                                    }

                                                    Return (GB42)
                                                }
                                                Else
                                                {
                                                    If ((_T_1 == One))
                                                    {
                                                        STSV = 0x0300
                                                        STSV |= QUTP
                                                        PDTS = 0x03E8
                                                        Return (GB42)
                                                    }
                                                    Else
                                                    {
                                                        If ((_T_1 == 0x02))
                                                        {
                                                            STSV = 0x0102
                                                            TGPU = 0x5C
                                                            PDTS = Zero
                                                            SFAN = Zero
                                                            SKNT = Zero
                                                            CPUE = Zero
                                                            TMP1 = Zero
                                                            TMP2 = Zero
                                                            Return (GB42)
                                                        }
                                                    }
                                                }

                                                Break
                                            }
                                        }
                                        Else
                                        {
                                            Return (0x80000002)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Break
            }
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        OperationRegion (PCNV, SystemMemory, \_SB.PCI0.RP05.PEGP.EBAS, 0x1000)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
            Offset (0x488), 
                ,   25, 
            MLTF,   1
        }

        Name (OMPR, 0x02)
        Name (DGOS, Zero)
        Name (CTOI, One)
        Name (NTOI, One)
        Name (MADL, Zero)
        Name (MSTE, Zero)
        Method (VSTS, 0, NotSerialized)
        {
            If ((\_SB.PCI0.GFX0.CPDL != Zero))
            {
                If ((\_SB.PCI0.GFX0.CPDL == (DID1 & 0xFFFF)))
                {
                    GATD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CPDL == (DID2 & 0xFFFF)))
                    {
                        GATD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CPL2 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CPL2 == (DID1 & 0xFFFF)))
                {
                    GATD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CPL2 == (DID2 & 0xFFFF)))
                    {
                        GATD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CPL3 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CPL3 == (DID1 & 0xFFFF)))
                {
                    GATD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CPL3 == (DID2 & 0xFFFF)))
                    {
                        GATD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CPL4 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CPL4 == (DID1 & 0xFFFF)))
                {
                    GATD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CPL4 == (DID2 & 0xFFFF)))
                    {
                        GATD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CPL5 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CPL5 == (DID1 & 0xFFFF)))
                {
                    GATD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CPL5 == (DID2 & 0xFFFF)))
                    {
                        GATD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CPL6 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CPL6 == (DID1 & 0xFFFF)))
                {
                    GATD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CPL6 == (DID2 & 0xFFFF)))
                    {
                        GATD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CPL7 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CPL7 == (DID1 & 0xFFFF)))
                {
                    GATD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CPL7 == (DID2 & 0xFFFF)))
                    {
                        GATD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CPL8 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CPL8 == (DID1 & 0xFFFF)))
                {
                    GATD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CPL8 == (DID2 & 0xFFFF)))
                    {
                        GATD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CADL != Zero))
            {
                If ((\_SB.PCI0.GFX0.CADL == (DID1 & 0xFFFF)))
                {
                    GACD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CADL == (DID2 & 0xFFFF)))
                    {
                        GACD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CAL2 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CAL2 == (DID1 & 0xFFFF)))
                {
                    GACD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CAL2 == (DID2 & 0xFFFF)))
                    {
                        GACD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CAL3 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CAL3 == (DID1 & 0xFFFF)))
                {
                    GACD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CAL3 == (DID2 & 0xFFFF)))
                    {
                        GACD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CAL4 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CAL4 == (DID1 & 0xFFFF)))
                {
                    GACD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CAL4 == (DID2 & 0xFFFF)))
                    {
                        GACD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CAL5 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CAL5 == (DID1 & 0xFFFF)))
                {
                    GACD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CAL5 == (DID2 & 0xFFFF)))
                    {
                        GACD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CAL6 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CAL6 == (DID1 & 0xFFFF)))
                {
                    GACD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CAL6 == (DID2 & 0xFFFF)))
                    {
                        GACD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CAL7 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CAL7 == (DID1 & 0xFFFF)))
                {
                    GACD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CAL7 == (DID2 & 0xFFFF)))
                    {
                        GACD |= One
                    }
                }
            }

            If ((\_SB.PCI0.GFX0.CAL8 != Zero))
            {
                If ((\_SB.PCI0.GFX0.CAL8 == (DID1 & 0xFFFF)))
                {
                    GACD |= 0x02
                }
                Else
                {
                    If ((\_SB.PCI0.GFX0.CAL8 == (DID2 & 0xFFFF)))
                    {
                        GACD |= One
                    }
                }
            }

            \_SB.PCI0.RP05.PEGP.MADL = GATD
            \_SB.PCI0.RP05.PEGP.MSTE = GACD
            GATD = Zero
            GACD = Zero
        }

        Method (GETD, 2, Serialized)
        {
            Name (_T_5, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            VSTS ()
            \_SB.PCI0.RP05.PEGP.MADL |= Arg0
            \_SB.PCI0.RP05.PEGP.MSTE |= Arg1
            While (One)
            {
                _T_0 = ToInteger (\_SB.PCI0.RP05.PEGP.MADL)
                If ((_T_0 == 0x07))
                {
                    While (One)
                    {
                        _T_1 = ToInteger (\_SB.PCI0.RP05.PEGP.MSTE)
                        If ((_T_1 == One))
                        {
                            \_SB.PCI0.RP05.PEGP.CTOI = One
                            \_SB.PCI0.RP05.PEGP.NTOI = 0x02
                        }
                        Else
                        {
                            If ((_T_1 == 0x02))
                            {
                                \_SB.PCI0.RP05.PEGP.CTOI = 0x02
                                \_SB.PCI0.RP05.PEGP.NTOI = 0x03
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    \_SB.PCI0.RP05.PEGP.CTOI = 0x03
                                    \_SB.PCI0.RP05.PEGP.NTOI = 0x04
                                }
                                Else
                                {
                                    If ((_T_1 == 0x03))
                                    {
                                        \_SB.PCI0.RP05.PEGP.CTOI = 0x04
                                        \_SB.PCI0.RP05.PEGP.NTOI = 0x05
                                    }
                                    Else
                                    {
                                        If ((_T_1 == 0x05))
                                        {
                                            \_SB.PCI0.RP05.PEGP.CTOI = 0x05
                                            \_SB.PCI0.RP05.PEGP.NTOI = 0x06
                                        }
                                        Else
                                        {
                                            If ((_T_1 == 0x06))
                                            {
                                                \_SB.PCI0.RP05.PEGP.CTOI = 0x06
                                                \_SB.PCI0.RP05.PEGP.NTOI = One
                                            }
                                            Else
                                            {
                                                \_SB.PCI0.RP05.PEGP.CTOI = One
                                                \_SB.PCI0.RP05.PEGP.NTOI = One
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }
                }
                Else
                {
                    If ((_T_0 == 0x06))
                    {
                        While (One)
                        {
                            _T_2 = ToInteger (\_SB.PCI0.RP05.PEGP.MSTE)
                            If ((_T_2 == 0x02))
                            {
                                \_SB.PCI0.RP05.PEGP.CTOI = 0x02
                                \_SB.PCI0.RP05.PEGP.NTOI = 0x03
                            }
                            Else
                            {
                                If ((_T_2 == 0x04))
                                {
                                    \_SB.PCI0.RP05.PEGP.CTOI = 0x03
                                    \_SB.PCI0.RP05.PEGP.NTOI = 0x06
                                }
                                Else
                                {
                                    If ((_T_2 == 0x06))
                                    {
                                        \_SB.PCI0.RP05.PEGP.CTOI = 0x06
                                        \_SB.PCI0.RP05.PEGP.NTOI = 0x02
                                    }
                                    Else
                                    {
                                        \_SB.PCI0.RP05.PEGP.CTOI = 0x02
                                        \_SB.PCI0.RP05.PEGP.NTOI = 0x02
                                    }
                                }
                            }

                            Break
                        }
                    }
                    Else
                    {
                        If ((_T_0 == 0x05))
                        {
                            While (One)
                            {
                                _T_3 = ToInteger (\_SB.PCI0.RP05.PEGP.MSTE)
                                If ((_T_3 == One))
                                {
                                    \_SB.PCI0.RP05.PEGP.CTOI = One
                                    \_SB.PCI0.RP05.PEGP.NTOI = 0x03
                                }
                                Else
                                {
                                    If ((_T_3 == 0x04))
                                    {
                                        \_SB.PCI0.RP05.PEGP.CTOI = 0x03
                                        \_SB.PCI0.RP05.PEGP.NTOI = 0x05
                                    }
                                    Else
                                    {
                                        If ((_T_3 == 0x05))
                                        {
                                            \_SB.PCI0.RP05.PEGP.CTOI = 0x05
                                            \_SB.PCI0.RP05.PEGP.NTOI = One
                                        }
                                        Else
                                        {
                                            \_SB.PCI0.RP05.PEGP.CTOI = One
                                            \_SB.PCI0.RP05.PEGP.NTOI = One
                                        }
                                    }
                                }

                                Break
                            }
                        }
                        Else
                        {
                            If ((_T_0 == 0x03))
                            {
                                While (One)
                                {
                                    _T_4 = ToInteger (\_SB.PCI0.RP05.PEGP.MSTE)
                                    If ((_T_4 == One))
                                    {
                                        \_SB.PCI0.RP05.PEGP.CTOI = One
                                        \_SB.PCI0.RP05.PEGP.NTOI = 0x02
                                    }
                                    Else
                                    {
                                        If ((_T_4 == 0x02))
                                        {
                                            \_SB.PCI0.RP05.PEGP.CTOI = 0x02
                                            \_SB.PCI0.RP05.PEGP.NTOI = 0x04
                                        }
                                        Else
                                        {
                                            If ((_T_4 == 0x03))
                                            {
                                                \_SB.PCI0.RP05.PEGP.CTOI = 0x04
                                                \_SB.PCI0.RP05.PEGP.NTOI = One
                                            }
                                            Else
                                            {
                                                \_SB.PCI0.RP05.PEGP.CTOI = One
                                                \_SB.PCI0.RP05.PEGP.NTOI = One
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                While (One)
                                {
                                    _T_5 = ToInteger (\_SB.PCI0.RP05.PEGP.MSTE)
                                    If ((_T_5 == One))
                                    {
                                        \_SB.PCI0.RP05.PEGP.CTOI = One
                                        \_SB.PCI0.RP05.PEGP.NTOI = One
                                    }
                                    Else
                                    {
                                        If ((_T_5 == 0x02))
                                        {
                                            \_SB.PCI0.RP05.PEGP.CTOI = 0x02
                                            \_SB.PCI0.RP05.PEGP.NTOI = 0x02
                                        }
                                        Else
                                        {
                                            If ((_T_5 == 0x04))
                                            {
                                                \_SB.PCI0.RP05.PEGP.CTOI = 0x03
                                                \_SB.PCI0.RP05.PEGP.NTOI = 0x03
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                        }
                    }
                }

                Break
            }
        }

        Method (NVOP, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If ((Arg1 != 0x0100))
            {
                Return (0x80000002)
            }

            While (One)
            {
                _T_0 = ToInteger (Arg2)
                If ((_T_0 == Zero))
                {
                    Local0 = Buffer (0x04)
                        {
                             0x61, 0x00, 0x01, 0x0C                         
                        }
                    Return (Local0)
                }
                Else
                {
                    If ((_T_0 == 0x05))
                    {
                        Name (TMP5, Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        })
                        CreateField (TMP5, Zero, 0x04, DAVF)
                        CreateField (TMP5, 0x04, One, LIDF)
                        CreateField (TMP5, 0x08, 0x06, TOGN)
                        CreateField (Arg3, 0x1F, One, NCSM)
                        CreateField (Arg3, 0x19, 0x05, NCSN)
                        CreateField (Arg3, 0x18, One, DIMK)
                        CreateField (Arg3, 0x0C, 0x0C, ACTD)
                        CreateField (Arg3, Zero, 0x0C, ATTD)
                        If (ToInteger (NCSM))
                        {
                            TOGN = ToInteger (NCSN)
                        }
                        Else
                        {
                            If (ToInteger (DIMK))
                            {
                                GETD (ToInteger (ATTD), ToInteger (ACTD))
                                TOGN = \_SB.PCI0.RP05.PEGP.NTOI
                                DAVF = One
                            }
                        }

                        Return (TMP5)
                    }
                    Else
                    {
                        If ((_T_0 == 0x06))
                        {
                            Name (TMP6, Package (0x0F)
                            {
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
                                0x2C
                            })
                            Index (TMP6, Zero) = DID2
                            Index (TMP6, 0x02) = DID1
                            Index (TMP6, 0x04) = DID4
                            Index (TMP6, 0x06) = DID2
                            Index (TMP6, 0x07) = DID1
                            Index (TMP6, 0x09) = DID2
                            Index (TMP6, 0x0A) = DID4
                            Index (TMP6, 0x0C) = DID1
                            Index (TMP6, 0x0D) = DID4
                            Return (TMP6)
                        }
                        Else
                        {
                            If ((_T_0 == 0x10))
                            {
                                Return (\_SB.PCI0.RP05.PEGP.GOBT (Arg3))
                            }
                            Else
                            {
                                If ((_T_0 == 0x1A))
                                {
                                    CreateField (Arg3, 0x18, 0x02, OPCE)
                                    CreateField (Arg3, Zero, One, FLCH)
                                    If (ToInteger (FLCH))
                                    {
                                        OMPR = ToInteger (OPCE)
                                    }

                                    Name (RBUF, Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00                         
                                    })
                                    CreateField (RBUF, Zero, One, OPEN)
                                    CreateField (RBUF, 0x03, 0x02, CGCS)
                                    CreateField (RBUF, 0x06, One, SHPC)
                                    CreateField (RBUF, 0x18, 0x03, DGPC)
                                    CreateField (RBUF, 0x1B, 0x02, HDAC)
                                    OPEN = One
                                    SHPC = One
                                    HDAC = 0x02
                                    DGPC = One
                                    If (\_SB.PCI0.RP05.PEGP.GSTA ())
                                    {
                                        CGCS = 0x03
                                    }
                                    Else
                                    {
                                        CGCS = Zero
                                    }

                                    Return (RBUF)
                                }
                                Else
                                {
                                    If ((_T_0 == 0x1B))
                                    {
                                        Local0 = Arg3
                                        CreateField (Local0, Zero, One, OPFL)
                                        CreateField (Local0, One, One, OPVL)
                                        If (ToInteger (OPVL))
                                        {
                                            OPTF = Zero
                                            If (ToInteger (OPFL))
                                            {
                                                OPTF = One
                                            }
                                        }

                                        Local0 = OPTF
                                        Return (Local0)
                                    }
                                    Else
                                    {
                                        Return (0x80000002)
                                    }
                                }
                            }
                        }
                    }
                }

                Break
            }
        }

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
            If ((USRG == 0x564B))
            {
                Return (OPVK)
            }

            Return (Zero)
        }

        Method (GSTA, 0, Serialized)
        {
            If ((SGPI (PWOK) == One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (DGOS)
            {
                \_SB.PCI0.RP05.PEGP._ON ()
                DGOS = Zero
                MLTF = Zero
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If ((\_SB.PCI0.RP05.PEGP.OMPR == 0x03))
            {
                \_SB.PCI0.RP05.PEGP._OFF ()
                DGOS = One
                \_SB.PCI0.RP05.PEGP.OMPR = 0x02
            }
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Local0 = Arg0
            Local1 = Arg1
            Name (VROM, Buffer (Local1)
            {
                 0x00                                           
            })
            If ((Local1 > 0x1000))
            {
                Local1 = 0x1000
            }

            If ((Arg0 > RVBS))
            {
                Return (VROM)
            }

            Local2 = (Arg0 + Arg1)
            If ((Local2 > RVBS))
            {
                Local1 = (RVBS - Local0)
            }

            If ((Local0 < 0x8000))
            {
                Mid (VBS1, Local0, Local1, VROM)
            }
            Else
            {
                Local0 -= 0x8000
                If ((Local0 < 0x8000))
                {
                    Mid (VBS2, Local0, Local1, VROM)
                }
                Else
                {
                    Local0 -= 0x8000
                    If ((Local0 < 0x8000))
                    {
                        Mid (VBS3, Local0, Local1, VROM)
                    }
                    Else
                    {
                        Local0 -= 0x8000
                        If ((Local0 < 0x8000))
                        {
                            Mid (VBS4, Local0, Local1, VROM)
                        }
                    }
                }
            }

            Return (VROM)
        }

        Method (MXMX, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                \_SB.PCI0.RP05.PEGP.SGPO (ESEL, One)
                P8XH (One, 0x99, One)
                P8XH (Zero, Zero, One)
                Return (One)
            }

            If ((Arg0 == One))
            {
                P8XH (One, 0x99, One)
                P8XH (Zero, One, One)
                Return (One)
            }

            If ((Arg0 == 0x02))
            {
                P8XH (One, 0x99, One)
                P8XH (Zero, 0x02, One)
                Return (\_SB.PCI0.RP05.PEGP.SGPI (ESEL))
            }

            Return (Zero)
        }

        Method (MXDS, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (\_SB.PCI0.RP05.PEGP.SGPI (DSEL))
            }

            If ((Arg0 == One))
            {
                \_SB.PCI0.RP05.PEGP.SGPO (DSEL, One)
            }

            Return (Zero)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If ((Arg0 == ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {
                Return (\_SB.PCI0.RP05.PEGP.GPS (Arg0, Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Return (\_SB.PCI0.RP05.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665")))
            {
                While (One)
                {
                    _T_0 = ToInteger (Arg2)
                    If ((_T_0 == Zero))
                    {
                        Return (Buffer (0x04)
                        {
                             0x01, 0x00, 0x01, 0x01                         
                        })
                    }
                    Else
                    {
                        If ((_T_0 == 0x18))
                        {
                            Return (Unicode ("0"))
                        }
                        Else
                        {
                            If ((_T_0 == 0x10))
                            {
                                If ((Arg1 == 0x0300))
                                {
                                    Name (MXM3, Buffer (MXBS)
                                    {
                                         0x00                                           
                                    })
                                    MXM3 = MXMB
                                    Return (MXM3)
                                }
                            }
                        }
                    }

                    Break
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }
    }

    If (\_OSI ("Windows 2013"))
    {
        Scope (\_SB.PCI0.RP05)
        {
            Name (WKEN, Zero)
            OperationRegion (PCNV, SystemMemory, \_SB.PCI0.RP05.PEGP.EBAS, 0x1000)
            Field (PCNV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x488), 
                    ,   25, 
                MLTF,   1
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                NVP3
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                NVP2
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                NVP3
            })
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((\_SB.OSCO & 0x04))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                Else
                {
                    If ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }
        }

        Name (MSD3, Zero)
        PowerResource (NVP3, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            OperationRegion (PEGB, SystemMemory, \_SB.PCI0.RP05.PEGP.DBPA, 0x0100)
            Field (PEGB, ByteAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                PCMR,   8, 
                Offset (0xA4), 
                PMST,   2
            }

            OperationRegion (DGRS, SystemMemory, \_SB.PCI0.RP05.PEGP.EBAS, 0x50)
            Field (DGRS, DWordAcc, NoLock, Preserve)
            {
                DDID,   16, 
                Offset (0x40), 
                SSSV,   32
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((MSD3 == 0x03))
                {
                    _STA = One
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.HLRS, One)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.PWEN, One)
                    Sleep (\_SB.PCI0.RP05.PEGP.APDT)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.VRON, One)
                    Sleep (\_SB.PCI0.RP05.PEGP.AVDT)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.HLRS, Zero)
                    Sleep (\_SB.PCI0.RP05.PEGP.IHDT)
                    \_SB.PCI0.RP05.LNKD = Zero
                    While ((\_SB.PCI0.RP05.LNKS < 0x07))
                    {
                        Sleep (One)
                    }

                    PCMR = 0x07
                    PMST = Zero
                    While ((DDID == 0xFFFF))
                    {
                        Sleep (One)
                    }

                    Local0 = (\_SB.VSSD << 0x10)
                    SSSV = (0x1025 | Local0)
                    \_SB.PCI0.RP05.MLTF = Zero
                    MSD3 = Zero
                    \_SB.PCI0.LPCB.EC0.VGAF = One
                    \_SB.PCI0.LPCB.EC0.SCTB ()
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((MSD3 == Zero))
                {
                    \_SB.PCI0.LPCB.EC0.VGAF = Zero
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.HLRS, One)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.VRON, Zero)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.PWEN, Zero)
                    _STA = Zero
                    MSD3 = 0x03
                    \_SB.PCI0.LPCB.EC0.SCTB ()
                }
            }
        }

        PowerResource (NVP2, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                _STA = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                _STA = One
            }
        }
    }
}

