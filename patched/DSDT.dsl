/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of acpi_dsdt.aml, Fri Jun 17 15:50:13 2016
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000EBF8 (60408)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x09
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("acpi_dsdt.aml", "DSDT", 1, "ACRSYS", "ACRPRDCT", 0x00000000)
{
    /*
     * iASL Warning: There were 12 external control methods found during
     * disassembly, but only 4 were resolved (8 unresolved). Additional
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
    External (_GPE.MMTB, MethodObj)    // Warning: Unresolved method, guessing 2 arguments
    External (_GPE.OSUP, MethodObj)    // Warning: Unresolved method, guessing 1 arguments
    External (_SB_.PCI0.PAUD.PUAM, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (_SB_.PCI0.PEG0.PEGP.EPON, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (_SB_.PCI0.RP05.PEGP.EPON, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (_SB_.PCI0.XHC_.DUAM, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (PS0X, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (PS3X, MethodObj)    // Warning: Unresolved method, guessing 0 arguments

    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_SB_.IAOE.ECTM, FieldUnitObj)
    External (_SB_.IAOE.FFSE, FieldUnitObj)
    External (_SB_.IAOE.IBT1, IntObj)
    External (_SB_.IAOE.ITMR, FieldUnitObj)
    External (_SB_.IAOE.PTSL, IntObj)
    External (_SB_.IAOE.RCTM, FieldUnitObj)
    External (_SB_.IAOE.WKRS, FieldUnitObj)
    External (_SB_.IFFS.FFSS, UnknownObj)
    External (_SB_.PCI0.B0D3.ABAR, FieldUnitObj)
    External (_SB_.PCI0.B0D3.BARA, IntObj)
    External (_SB_.PCI0.GFX0.AINT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GFX0.BLM0, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM1, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM2, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM3, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM4, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM5, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM6, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM7, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM8, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLM9, FieldUnitObj)
    External (_SB_.PCI0.GFX0.BLMX, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CLID, FieldUnitObj)
    External (_SB_.PCI0.GFX0.DD1F, UnknownObj)
    External (_SB_.PCI0.GFX0.GHDS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.GSCI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.GSSE, FieldUnitObj)
    External (_SB_.PCI0.GFX0.IUEH, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.STAT, FieldUnitObj)
    External (_SB_.PCI0.GFX0.TCHE, FieldUnitObj)
    External (_SB_.PCI0.RP05.LNKD, FieldUnitObj)
    External (_SB_.PCI0.RP05.PEGP.DD01, UnknownObj)
    External (AR08, IntObj)
    External (GSMI, FieldUnitObj)
    External (IGDS, FieldUnitObj)
    External (LIDS, FieldUnitObj)
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)
    External (PR08, IntObj)
    External (SGMD, FieldUnitObj)
    
    External (_SB_.PCI0.RP05.PEGP._OFF, MethodObj) // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
    External (_SB_.PCI0.RP05.PEGP._ON, MethodObj) // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (SP2O, 0x4E)
    Name (SP1O, 0x2E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0600)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (HSCS, One)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x8000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0xEFA0)
    Name (SMBL, 0x10)
    Name (PBLK, 0x1810)
    Name (PMBS, 0x1800)
    Name (PMLN, 0x0100)
    Name (LVL2, 0x1814)
    Name (LVL3, 0x1815)
    Name (LVL4, 0x1816)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0800)
    Name (GPLN, 0x0400)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x1830)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FEMD, 0x04)
    Name (BGR, One)
    Name (BFR, 0x02)
    Name (BBR, 0x03)
    Name (BWC, 0x04)
    Name (BGRP, 0x09)
    Name (BGRC, 0x0A)
    Name (BFRP, 0x0B)
    Name (BBRP, 0x0C)
    Name (BRPS, 0x10)
    Name (BRCS, 0x11)
    Name (BRDS, 0x12)
    Name (BR4S, 0x13)
    Name (BR5S, 0x14)
    Name (BWT1, 0x20)
    Name (BW1P, 0x21)
    Name (BW2C, 0x22)
    Name (BW2P, 0x23)
    Name (BSPC, 0x24)
    Name (BSPP, 0x25)
    Name (BTS, 0x26)
    Name (BICO, 0x27)
    Name (BICC, 0x28)
    Name (BHB, 0x30)
    Name (BFS2, 0x31)
    Name (BFS3, 0x32)
    Name (BFS4, 0x33)
    Name (BRH, 0x35)
    Name (BFHC, 0x40)
    Name (BFD1, 0x41)
    Name (BFD2, 0x42)
    Name (BFCC, 0x43)
    Name (BHCP, 0x44)
    Name (BCOC, 0x45)
    Name (BFHP, 0x46)
    Name (BFCP, 0x47)
    Name (BTDT, 0x50)
    Name (BTMB, 0x51)
    Name (BBGB, 0x52)
    Name (BHC2, 0x53)
    Name (TCGM, One)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (PFTI, 0x04)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (DPPB, 0xFED98000)
    Name (DPPL, 0x8000)
    OperationRegion (GNVS, SystemMemory, 0x9AFBCA98, 0x000002F5)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x1E), 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        COMA,   8, 
        COMB,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x42), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x48), 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    16, 
        PLID,   8, 
        ECTG,   8, 
        Offset (0x70), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0x7A), 
        DSEN,   8, 
        Offset (0x7C), 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        VFN5,   8, 
        VFN6,   8, 
        VFN7,   8, 
        VFN8,   8, 
        VFN9,   8, 
        Offset (0x8F), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        Offset (0xB0), 
        LTR1,   8, 
        LTR2,   8, 
        LTR3,   8, 
        LTR4,   8, 
        LTR5,   8, 
        LTR6,   8, 
        LTR7,   8, 
        LTR8,   8, 
        OBF1,   8, 
        OBF2,   8, 
        OBF3,   8, 
        OBF4,   8, 
        OBF5,   8, 
        OBF6,   8, 
        OBF7,   8, 
        OBF8,   8, 
        XHCI,   8, 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        DDRF,   8, 
        RTD3,   8, 
        PEP0,   8, 
        PEP3,   8, 
        DPTF,   8, 
        SADE,   8, 
        SACR,   8, 
        SAHT,   8, 
        PCHD,   8, 
        PCHC,   8, 
        PCHH,   8, 
        CTDP,   8, 
        LPMP,   8, 
        LPMV,   8, 
        ECEU,   8, 
        TGFG,   16, 
        MEMD,   8, 
        MEMC,   8, 
        MEMH,   8, 
        FND1,   8, 
        FND2,   8, 
        AMBD,   8, 
        AMAT,   8, 
        AMPT,   8, 
        AMCT,   8, 
        AMHT,   8, 
        SKDE,   8, 
        SKAT,   8, 
        SKPT,   8, 
        SKCT,   8, 
        SKHT,   8, 
        EFDE,   8, 
        EFAT,   8, 
        EFPT,   8, 
        EFCT,   8, 
        EFHT,   8, 
        VRDE,   8, 
        VRAT,   8, 
        VRPT,   8, 
        VRCT,   8, 
        VRHT,   8, 
        DPAP,   8, 
        DPPP,   8, 
        DPCP,   8, 
        DCMP,   8, 
        TRTV,   8, 
        LPOE,   8, 
        LPOP,   8, 
        LPOS,   8, 
        LPOW,   8, 
        LPER,   8, 
        PPSZ,   32, 
        DISE,   8, 
        PFMA,   64, 
        PFMS,   8, 
        PFIA,   16, 
        ICNF,   8, 
        DSP0,   32, 
        DSP1,   32, 
        NFCE,   8, 
        CODS,   8, 
        SNHE,   8, 
        S0ID,   8, 
        CTDB,   8, 
        Offset (0x207), 
        PWRE,   8, 
        PWRP,   8, 
        XHPR,   8, 
        SDS0,   8, 
        SDS1,   16, 
        SDS2,   8, 
        SDS3,   8, 
        SDS4,   8, 
        SDS5,   8, 
        Offset (0x212), 
        RIC0,   8, 
        PEPY,   8, 
        DVS0,   8, 
        DVS1,   8, 
        DVS2,   8, 
        DVS3,   8, 
        GBSX,   8, 
        IUBE,   8, 
        IUCE,   8, 
        IUDE,   8, 
        ECNO,   8, 
        AUDD,   16, 
        DSPD,   16, 
        IC0D,   16, 
        IC1D,   16, 
        IC1S,   16, 
        VRRD,   16, 
        PSCP,   8, 
        RWAG,   8, 
        I20D,   16, 
        I21D,   16, 
        Offset (0x231), 
        RCG0,   8, 
        ECDB,   8, 
        P2ME,   8, 
        SSH0,   16, 
        SSL0,   16, 
        SSD0,   16, 
        FMH0,   16, 
        FML0,   16, 
        FMD0,   16, 
        FPH0,   16, 
        FPL0,   16, 
        FPD0,   16, 
        SSH1,   16, 
        SSL1,   16, 
        SSD1,   16, 
        FMH1,   16, 
        FML1,   16, 
        FMD1,   16, 
        FPH1,   16, 
        FPL1,   16, 
        FPD1,   16, 
        M0C0,   16, 
        M1C0,   16, 
        M2C0,   16, 
        M0C1,   16, 
        M1C1,   16, 
        M2C1,   16, 
        M0C2,   16, 
        M1C2,   16, 
        M0C3,   16, 
        M1C3,   16, 
        M0C4,   16, 
        M1C4,   16, 
        M0C5,   16, 
        M1C5,   16, 
        TBSF,   8, 
        GIRQ,   32, 
        DMTP,   8, 
        DMTD,   8, 
        DMSH,   8, 
        LANP,   8, 
        Offset (0x27E), 
        SHSB,   8, 
        PLCS,   8, 
        PLVL,   16, 
        GN1E,   8, 
        G1AT,   8, 
        G1PT,   8, 
        G1CT,   8, 
        G1HT,   8, 
        GN2E,   8, 
        G2AT,   8, 
        G2PT,   8, 
        G2CT,   8, 
        G2HT,   8, 
        WWSD,   8, 
        CVSD,   8, 
        SSDD,   8, 
        INLD,   8, 
        IFAT,   8, 
        IFPT,   8, 
        IFCT,   8, 
        IFHT,   8, 
        DOSD,   8, 
        USBH,   8, 
        BCV4,   8, 
        WTV0,   8, 
        WTV1,   8, 
        APFU,   8, 
        SOHP,   8, 
        NOHP,   8, 
        TBSE,   8, 
        WKFN,   8, 
        PEPC,   16, 
        VRSD,   16, 
        PB1E,   8, 
        WAND,   8, 
        WWAT,   8, 
        WWPT,   8, 
        WWCT,   8, 
        WWHT,   8, 
        Offset (0x2AD), 
        MPLT,   16, 
        GR13,   8, 
        SPST,   8, 
        ECLP,   8, 
        Offset (0x2BC), 
        CCMD,   8, 
        COMD,   8, 
        LPT1,   8, 
        PSTP,   8, 
        WKMD,   8, 
        IDER,   8, 
        PIE0,   8, 
        PIE1,   8, 
        CSTS,   8, 
        PMEE,   8, 
        WOLE,   8, 
        NVAD,   32, 
        NVSZ,   32, 
        OPTF,   8, 
        IFSE,   8, 
        ISCT,   8, 
        S1C0,   16, 
        S1C1,   16, 
        S2C0,   16, 
        S2C1,   16, 
        SLPS,   8, 
        ALAT,   32, 
        HRAM,   8, 
        MDEN,   8, 
        TBEP,   8, 
        WIFD,   8, 
        WFAT,   8, 
        WFPT,   8, 
        WFCT,   8, 
        WFHT,   8, 
        SDEB,   8, 
        FGNE,   8, 
        MAUL,   8, 
        U2PR,   32, 
        U3SS,   8, 
        TBTC,   8, 
        TRPN,   8, 
        TBTM,   32
    }

    OperationRegion (OGNS, SystemMemory, 0x9AFBB018, 0x00000981)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        D2DF,   8, 
        MTID,   8, 
        WMIB,   16528, 
        ECDA,   2048, 
        HDIF,   504, 
        ODIF,   168, 
        CTID,   16, 
        LMST,   8, 
        EPMS,   8, 
        DCST,   8, 
        LEMS,   8, 
        RFDS,   8, 
        ODST,   8, 
        A01W,   8, 
        ESAS,   8, 
        ALTO,   8, 
        TMGB,   16, 
        OG00,   8, 
        OG01,   8, 
        OG02,   8, 
        OG03,   8, 
        OG04,   8, 
        OG05,   8, 
        OG06,   8, 
        OG07,   8, 
        OG08,   8, 
        OG09,   8, 
        OG10,   8, 
        ECON,   8
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Name (PR00, Package (0x26)
            {
                Package (0x04)
                {
                    0x0013FFFF, 
                    Zero, 
                    LNKH, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    One, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    Zero, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    LNKH, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }
            })
            Name (AR00, Package (0x26)
            {
                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    One, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    Zero, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    Zero, 
                    Zero, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    Zero, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Name (PR02, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR02, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Name (PR0A, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }
            })
            Name (AR0A, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }
            })
            Name (PR0B, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKB, 
                    Zero
                }
            })
            Name (AR0B, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x11
                }
            })
            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                D1F2,   1, 
                D1F1,   1, 
                D1F0,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                PBMX = ((PELN >> 0x14) - 0x02)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                PBLN = ((PELN >> 0x14) - One)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If ((PM1L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If ((PM1H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If ((PM2L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If ((PM2H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If ((PM3L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If ((PM3H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If ((PM4L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If ((PM4H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    E0LN = Zero
                }

                If ((PM5L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    E0RW = Zero
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    E4LN = Zero
                }

                If ((PM5H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    E4RW = Zero
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    E8LN = Zero
                }

                If ((PM6L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    E8RW = Zero
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    ECLN = Zero
                }

                If ((PM6H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    ECRW = Zero
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    F0LN = Zero
                }

                If ((PM0H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    F0RW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                M1MN = (TLUD << 0x14)
                M1LN = ((M1MX - M1MN) + One)
                Return (BUF0)
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (^XHC.CUID (Arg0))
                {
                    Return (^XHC.POSC (Arg1, Arg2, Arg3))
                }
                Else
                {
                    If ((OSYS >= 0x07DC))
                    {
                        If ((XCNT == Zero))
                        {
                            ^XHC.XSEL ()
                            XCNT++
                        }
                    }
                }

                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2
                    CTRL = CDW3
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL
                    OSCC = CTRL
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (PMEE)
                    {
                        Return (GPRW (0x6B, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x6B, Zero))
                    }
                }

                Name (PR01, Package (0x18)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        Zero, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        One, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        0x02, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        0x03, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        Zero, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        One, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        0x02, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        0x03, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        One, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        0x02, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        0x03, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        LNKF, 
                        Zero
                    }
                })
                Name (AR01, Package (0x18)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        Zero, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        One, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        0x02, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        0x03, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        Zero, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        One, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        0x02, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        0x03, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        One, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        0x02, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        0x03, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        Zero, 
                        0x15
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, Zero, 0x0100)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x02), 
                        CDID,   16, 
                        Offset (0x08), 
                        CRID,   8, 
                        Offset (0x60), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x68), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0xAC), 
                        Offset (0xAD), 
                        Offset (0xAE), 
                        XUSB,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PARC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PBRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PCRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PDRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PERC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PFRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PGRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PHRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0x78), 
                        ,   6, 
                    GR03,   2, 
                    Offset (0x7A), 
                    GR08,   2, 
                    GR09,   2, 
                    GR0A,   2, 
                    GR0B,   2, 
                    Offset (0x7C), 
                        ,   2, 
                    GR19,   2, 
                    Offset (0x80), 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Name (_GPE, 0x07)  // _GPE: General Purpose Events
                    Name (SEL0, 0xF0)
                    Name (BFLG, Zero)
                    Name (RDBT, Zero)
                    Name (RDWL, Zero)
                    Name (RD3G, Zero)
                    Name (RDRF, Zero)
                    Name (PB10, Zero)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((Arg0 == 0x03))
                        {
                            Local0 = Arg1
                            If (Local0)
                            {
                                ECOK = One
                            }
                            Else
                            {
                                ECOK = Zero
                            }
                        }

                        If (ECOK)
                        {
                            Acquire (MUT1, 0xFFFF)
                            If ((OSYS >= 0x07DC))
                            {
                                OSW8 = One
                                ^^^^RDWL = One
                                ^^^^RDBT = One
                                ^^^^RD3G = One
                            }
                            Else
                            {
                                OSW8 = Zero
                            }

                            ILID ()
                            WLST = ^^^^RDWL
                            BLTS = ^^^^RDBT
                            ED3G = ^^^^RD3G
                            CPLE = One
                            Release (MUT1)
                        }
                    }

                    OperationRegion (VERM, EmbeddedControl, Zero, 0xFF)
                    Field (VERM, ByteAcc, NoLock, Preserve)
                    {
                        LNPS,   8
                    }

                    OperationRegion (ERAM, SystemMemory, 0xFF708500, 0x0100)
                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        CMCM,   8, 
                        CMD1,   8, 
                        CMD2,   8, 
                        CMD3,   8, 
                        Offset (0x18), 
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMD0,   256, 
                        BCNT,   8, 
                        SMAA,   8, 
                        BATD,   16, 
                        ACDF,   1, 
                        Offset (0x41), 
                            ,   5, 
                        FLS4,   1, 
                        Offset (0x42), 
                        FLS3,   1, 
                            ,   1, 
                        S0EF,   1, 
                            ,   4, 
                        PECE,   1, 
                            ,   1, 
                        LMAT,   1, 
                        Offset (0x45), 
                        ECPF,   8, 
                        Offset (0x48), 
                        KBBL,   1, 
                            ,   1, 
                        RFST,   1, 
                        Offset (0x49), 
                        ERCT,   8, 
                        Offset (0x4B), 
                        TBLV,   8, 
                        ARCD,   1, 
                            ,   3, 
                        DOCK,   1, 
                        LANC,   1, 
                        LIDT,   1, 
                        CRTS,   1, 
                        Offset (0x4E), 
                        TJMX,   2, 
                            ,   2, 
                        VGAF,   1, 
                        EDTS,   1, 
                        Offset (0x53), 
                        DOFF,   8, 
                        Offset (0x58), 
                        CTMP,   8, 
                        RG59,   8, 
                        Offset (0x60), 
                        WLAN,   1, 
                        BLTH,   1, 
                        ST3G,   1, 
                        CPLE,   1, 
                            ,   1, 
                        ED3G,   1, 
                        WLST,   1, 
                        BLTS,   1, 
                            ,   1, 
                        DPBL,   1, 
                            ,   4, 
                        NIWM,   1, 
                        TOHP,   1, 
                        Offset (0x63), 
                        WLPH,   1, 
                        BBST,   1, 
                        ODST,   1, 
                        GPSW,   1, 
                        Offset (0x64), 
                        Offset (0x70), 
                        BTMD,   8, 
                        MBTS,   1, 
                        MBTF,   1, 
                            ,   4, 
                        MBDX,   1, 
                        MBAD,   1, 
                        MBTC,   1, 
                            ,   4, 
                        MBPC,   1, 
                        Offset (0x77), 
                        BA1C,   8, 
                        MCYC,   16, 
                        MTMP,   16, 
                        MDAT,   16, 
                        MCUR,   16, 
                        MBRM,   16, 
                        MBVG,   16, 
                        BHVC,   16, 
                        BLVC,   16, 
                        LFCC,   16, 
                        BTSN,   16, 
                        BTDC,   16, 
                        BTDV,   16, 
                        BTMN,   8, 
                        Offset (0xA0), 
                        AWT0,   8, 
                        AWT1,   8, 
                        AWT2,   8, 
                        AWT3,   7, 
                        AWT4,   1, 
                        IBT1,   8, 
                        WTMS,   8, 
                        ECSC,   8, 
                        Offset (0xBB), 
                        TARU,   8, 
                        TARN,   8, 
                        TARD,   8, 
                        Offset (0xD0), 
                        EBPL,   1, 
                        Offset (0xD1), 
                            ,   3, 
                        RFAT,   1, 
                        OSW8,   1, 
                        WOLF,   1, 
                        WOWL,   1, 
                        Offset (0xD5), 
                        ECDY,   8, 
                        DBPL,   8
                    }

                    OperationRegion (EROM, SystemMemory, 0xFF708900, 0x0100)
                    Field (EROM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x40), 
                        BCL0,   8, 
                        BCL1,   8, 
                        BCL2,   8, 
                        BCL3,   8, 
                        BCL4,   8, 
                        BCL5,   8, 
                        BCL6,   8, 
                        BCL7,   8, 
                        BCL8,   8, 
                        BCL9,   8, 
                        Offset (0xF6), 
                        C6SW,   8, 
                        Offset (0xFC), 
                        TPVD,   8, 
                        SIMU,   8, 
                        Offset (0xFF), 
                        PJNA,   8
                    }

                    Scope (\_SB)
                    {
                        OperationRegion (EMBX, SystemMemory, 0xFF708A00, 0x0100)
                        Field (EMBX, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0x80), 
                            ODB0,   8, 
                            ODB1,   8, 
                            ODB2,   8, 
                            ODB3,   8, 
                            ODB4,   8, 
                            ODB5,   8, 
                            ODB6,   8, 
                            ODB7,   8, 
                            ODB8,   8, 
                            ODB9,   8, 
                            ODBA,   8, 
                            ODBB,   8, 
                            ODBC,   8, 
                            ODBD,   8, 
                            ODBE,   8, 
                            ODBF,   8, 
                            ODX0,   32, 
                            ODX1,   32, 
                            ODX2,   32, 
                            ODX3,   32, 
                            Offset (0xB1), 
                            U3DE,   1, 
                            Offset (0xB4), 
                            VSSD,   16, 
                            Offset (0xC0), 
                            VSID,   8, 
                            VRID,   8, 
                            DVID,   16, 
                            Offset (0xC8), 
                            PWSF,   1, 
                            ODEF,   1, 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                            TMLF,   1, 
                            Offset (0xC9), 
                            KBBF,   1, 
                            USCB,   1, 
                            RFBS,   1, 
                            USCF,   1, 
                            HKEY,   1, 
                            ZPOD,   1, 
                                ,   1, 
                            IOAC,   1, 
                            Offset (0xCB), 
                            Offset (0xCC), 
                            Offset (0xD0), 
                            CFID,   8, 
                            CPSI,   8, 
                            PPCD,   8, 
                            CPTB,   1, 
                            DCTB,   1, 
                            Offset (0xD4), 
                            VGAD,   2, 
                            Offset (0xD5), 
                            PPDC,   8, 
                            SGST,   8, 
                            EDSP,   8, 
                            BLVL,   8, 
                            Offset (0xDE), 
                            CDSB,   8, 
                            GPDT,   8, 
                            PMNL,   8, 
                            PMNH,   8, 
                            PPDL,   8, 
                            PPDH,   8, 
                            IPWM,   8, 
                            QPCU,   8, 
                            QPCN,   8, 
                            QPCD,   8, 
                            TPMS,   1, 
                            GSEN,   1, 
                            FPRS,   1, 
                            SMCD,   1, 
                            Offset (0xE9), 
                            DEFL,   1, 
                            Offset (0xEA), 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                            Offset (0xEB), 
                            Offset (0xEF), 
                            IFIL,   1, 
                            IF3L,   1, 
                            Offset (0xF0), 
                            SRAM,   1, 
                            SDTU,   1, 
                            Offset (0xF1), 
                            DRID,   8, 
                            TPID,   8, 
                                ,   1, 
                            NKST,   1, 
                            BOTY,   1, 
                            Offset (0xF4), 
                            S4CT,   8, 
                            LFCT,   8, 
                            LLCT,   8, 
                            XPS5,   8, 
                            IWLN,   1, 
                            IWWL,   1, 
                            IWS3,   1, 
                            IWS4,   1, 
                            Offset (0xF9), 
                            Offset (0xFB), 
                            WFVD,   8, 
                            ISWR,   8, 
                            IECM,   8
                        }
                    }

                    Mutex (MUT1, 0x00)
                    Mutex (MUT0, 0x00)
                    Method (APOL, 1, NotSerialized)
                    {
                        DBPL = Arg0
                        EBPL = One
                    }

                    OperationRegion (ECIO, SystemIO, 0x60, 0x10)
                    Field (ECIO, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x02), 
                        EDAT,   8, 
                        Offset (0x06), 
                        CMDS,   8, 
                        Offset (0x08), 
                        EC68,   8, 
                        Offset (0x0A), 
                        EC6A,   8, 
                        Offset (0x0C), 
                        EC6C,   8, 
                        Offset (0x0E), 
                        EC6E,   8
                    }

                    Method (IBE2, 0, Serialized)
                    {
                        While ((EC6E & 0x02))
                        {
                            Sleep (0x50)
                        }
                    }

                    Method (ECMD, 1, Serialized)
                    {
                        IBE2 ()
                        EC6E = Arg0
                        IBE2 ()
                    }

                    Method (ECRD, 1, Serialized)
                    {
                        If ((ECUP == Zero))
                        {
                            WTGP (0x58, One)
                            Sleep (0x10)
                        }

                        Return (DerefOf (Arg0))
                    }

                    Method (ECWT, 2, Serialized)
                    {
                        If ((ECUP == Zero))
                        {
                            WTGP (0x58, One)
                            Sleep (0x10)
                        }

                        Arg1 = Arg0
                    }

                    Method (ILID, 0, NotSerialized)
                    {
                        If (IGDS)
                        {
                            If (LIDT)
                            {
                                LIDS = Zero
                                ^^^GFX0.CLID = Zero
                            }
                            Else
                            {
                                LIDS = One
                                ^^^GFX0.CLID = One
                            }
                        }
                    }

                    Name (FEBC, Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    Name (AAST, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    Name (AAGT, Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    Name (BEBI, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    Name (BKCP, Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    Name (BKGB, Buffer (0x14)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                    })
                    Name (BKSB, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    Name (BLCP, Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    Name (BLSP, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    Name (BKMN, Buffer (0x58)
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
                        /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    Name (BKSN, Buffer (0x30)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    Name (BKAT, Buffer (0x48)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    Name (BLGB, Buffer (0x0808)
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
                        /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0100 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0110 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0118 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0120 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0128 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0130 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0138 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0140 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0148 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0150 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0158 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0160 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0170 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0178 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0180 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0188 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0190 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0198 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 01F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0200 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0208 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0210 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0218 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0220 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0228 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0230 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0238 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0240 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0250 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0258 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0260 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0268 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0270 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0278 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0280 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0288 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0290 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0298 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 02F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0300 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0308 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0310 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0318 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0320 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0328 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0330 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0338 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0340 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0348 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0350 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0358 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0360 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0368 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0370 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0378 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0380 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0388 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0390 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0398 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 03F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0400 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0408 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0410 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0418 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0420 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0428 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0430 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0438 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0440 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0448 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0450 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0458 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0460 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0468 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0470 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0478 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0480 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0488 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0490 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0498 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 04F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0500 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0508 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0510 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0518 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0520 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0528 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0530 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0538 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0540 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0548 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0550 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0558 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0560 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0568 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0570 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0578 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0580 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0588 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0590 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0598 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 05F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0600 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0608 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0610 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0618 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0620 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0628 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0630 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0638 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0640 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0648 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0650 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0658 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0660 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0668 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0670 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0678 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0680 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0688 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0690 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0698 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 06F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0700 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0708 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0710 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0718 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0720 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0728 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0730 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0738 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0740 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0748 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0750 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0758 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0760 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0768 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0770 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0778 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0780 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0788 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0790 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0798 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 07F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0800 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    Name (ABST, Buffer (0x02)
                    {
                         0x00, 0x00                                     
                    })
                    Name (ABGT, Buffer (0x84)
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
                        /* 0080 */  0x00, 0x00, 0x00, 0x00                         
                    })
                    Method (_Q01, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, One)
                    }

                    Method (_Q02, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (0x02, One)
                    }

                    Method (_Q04, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x83)
                    }

                    Method (_Q05, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x82)
                    }

                    Method (_Q06, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x82)
                    }

                    Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x22)
                    }

                    Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x24)
                    }

                    Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x23)
                    }

                    Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((LMAT == One))
                        {
                            HKEV (One, 0x64)
                        }
                        Else
                        {
                            HKDS ()
                        }
                    }

                    Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (0x02, 0x64)
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x21)
                    }

                    Name (BATO, 0x80)
                    Name (BATN, Zero)
                    Name (ECEV, 0xC0)
                    Name (Q29F, Zero)
                    Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((SMST & 0x40))
                        {
                            Local0 = SMAA
                            If ((Local0 == 0x14))
                            {
                                SELE ()
                                If ((0x40 & ECEV))
                                {
                                    Notify (BAT1, 0x81)
                                    BINH ()
                                }

                                If ((0x02 & ECEV))
                                {
                                    Notify (ACAD, Zero)
                                    AINH ()
                                }

                                ^^^^BAT1.RCAP = Zero
                                Notify (BAT1, 0x80)
                                BATO = BATD
                                SMST &= 0xBF
                            }
                        }
                    }

                    Method (_Q29, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }

                    Method (_Q57, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x84)
                    }

                    Method (_Q58, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x84)
                    }

                    Method (_Q5B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x24)
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x25)
                    }

                    Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((LMAT == One))
                        {
                            If ((OSYS >= 0x07DC)) {}
                            Else
                            {
                                If ((RFST == Zero))
                                {
                                    RFST = One
                                    If ((WLAN == One))
                                    {
                                        WLST = One
                                    }

                                    If ((ST3G == One))
                                    {
                                        ED3G = One
                                    }
                                }
                                Else
                                {
                                    RFST = Zero
                                    If ((WLAN == One))
                                    {
                                        WLST = Zero
                                    }

                                    If ((ST3G == One))
                                    {
                                        ED3G = Zero
                                    }
                                }
                            }
                        }

                        HKEV (One, 0x02)
                    }

                    Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Index (^^^WMID.FEBC, Zero) = One
                        Notify (WMID, 0xBD)
                    }

                    Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Name (CPUF, Zero)
                    Mutex (PPCF, 0x00)
                    Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q84, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }

                    Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (BAT1, 0x81)
                    }

                    Method (_Q8C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q8D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q8E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (((OSYS < 0x07D6) || (LINX == One)))
                        {
                            If ((BLVL < 0x09))
                            {
                                BLVL++
                            }

                            BRXP ()
                        }
                        Else
                        {
                            If (((SGST == 0x04) || (SGST == Zero)))
                            {
                                Notify (^^^GFX0.DD1F, 0x86)
                            }
                            Else
                            {
                                Notify (^^^RP05.PEGP.DD01, 0x86)
                            }
                        }

                        Index (^^^WMID.FEBC, Zero) = 0x04
                        Index (^^^WMID.FEBC, One) = BLVL
                        Index (^^^WMID.FEBC, 0x02) = BLVL
                        Notify (WMID, 0xBC)
                    }

                    Method (_Q8F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (((OSYS < 0x07D6) || (LINX == One)))
                        {
                            If ((BLVL > Zero))
                            {
                                BLVL--
                            }

                            BRXP ()
                        }
                        Else
                        {
                            If (((SGST == 0x04) || (SGST == Zero)))
                            {
                                Notify (^^^GFX0.DD1F, 0x87)
                            }
                            Else
                            {
                                Notify (^^^RP05.PEGP.DD01, 0x87)
                            }
                        }

                        Index (^^^WMID.FEBC, Zero) = 0x04
                        Index (^^^WMID.FEBC, One) = BLVL
                        Index (^^^WMID.FEBC, 0x02) = BLVL
                        Notify (WMID, 0xBC)
                    }

                    Method (_Q90, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^RDWL = WLST
                    }

                    Method (_Q91, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^RDWL = WLST
                    }

                    Method (_Q92, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^RDBT = BLTS
                    }

                    Method (_Q93, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^RDBT = BLTS
                    }

                    Method (_Q9B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ILID ()
                        GO55 = Zero
                        Notify (LID, 0x80)
                    }

                    Method (_Q9C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ILID ()
                        GO55 = One
                        Notify (LID, 0x80)
                    }

                    Method (_Q9D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x63)
                    }

                    Method (_Q9E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKEV (One, 0x63)
                    }

                    Method (_QA0, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^RD3G = ED3G
                    }

                    Method (_QA1, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^RD3G = ED3G
                    }

                    Method (_QA6, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }

                    Method (SELE, 0, NotSerialized)
                    {
                        BATN = BATD
                        ECEV = Zero
                        If ((0xC0 & BATN))
                        {
                            ECEV |= One
                            If ((0x0300 & BATN))
                            {
                                ECEV |= 0x04
                            }
                        }

                        Local0 = (BATN & One)
                        Local1 = (BATO & One)
                        If (Local0)
                        {
                            ECEV |= 0x0100
                        }
                        Else
                        {
                            ECEV &= 0xFEFF
                        }

                        If (~(Local0 == Local1))
                        {
                            ECEV |= 0x40
                        }

                        Local0 = (BATN & 0x02)
                        Local1 = (BATO & 0x02)
                        If (Local0)
                        {
                            ECEV |= 0x0200
                        }
                        Else
                        {
                            ECEV &= 0xFDFF
                        }

                        If (~(Local0 == Local1))
                        {
                            ECEV |= 0x80
                        }

                        Local0 = (BATN & 0xC0)
                        Local1 = (BATO & 0xC0)
                        If (~(Local0 == Local1))
                        {
                            ECEV |= 0x02
                        }

                        If ((One & ECEV))
                        {
                            If ((0x04 & ECEV))
                            {
                                If ((BATN & 0x20))
                                {
                                    ECEV |= 0x10
                                }
                                Else
                                {
                                    ECEV |= 0x20
                                }
                            }
                        }
                    }

                    Method (BINH, 0, NotSerialized)
                    {
                    }

                    Method (AINH, 0, NotSerialized)
                    {
                        SCTB ()
                        If (((OSYS < 0x07D6) || (LINX == One)))
                        {
                            If (ACDF)
                            {
                                If ((BLVL < 0x04))
                                {
                                    BLVL += 0x05
                                }
                                Else
                                {
                                    BLVL = 0x09
                                }
                            }
                            Else
                            {
                                If ((BLVL > 0x05))
                                {
                                    BLVL -= 0x05
                                }
                                Else
                                {
                                    BLVL = Zero
                                }
                            }

                            BRXP ()
                        }
                    }

                    Method (HKEV, 2, NotSerialized)
                    {
                        Index (^^^WMID.FEBC, Zero) = Arg0
                        Index (^^^WMID.FEBC, One) = Arg1
                        Index (^^^WMID.FEBC, 0x02) = Zero
                        Index (^^^WMID.FEBC, 0x03) = Zero
                        Notify (WMID, 0xBC)
                    }

                    Method (HKDS, 0, NotSerialized)
                    {
                        ^^^GFX0.GHDS (Zero)
                    }

                    Method (BRXP, 0, NotSerialized)
                    {
                        If (((SGST == 0x04) || (SGST == Zero)))
                        {
                            Local1 = (DerefOf (Index (PNLT, BLVL)) * 0x64)
                            Local2 = (Local1 / 0x0100)
                            ^^^GFX0.AINT (One, Local2)
                        }
                        Else
                        {
                        }
                    }

                    Mutex (CTBM, 0x00)
                    Method (SCTB, 0, NotSerialized)
                    {
                        Acquire (CTBM, 0xFFFF)
                        If (CPTB)
                        {
                            If ((!ACDF && GO35))
                            {
                                DCTB = One
                            }
                            Else
                            {
                                DCTB = Zero
                            }

                            SSMP = 0xD8
                        }

                        Release (CTBM)
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0F)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((OSYS >= 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPAE)
                            {
                                Return (0x0B)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0F._BAS, HPT0)  // _BAS: Base Address
                            If ((HPAS == One))
                            {
                                HPT0 = 0xFED01000
                            }

                            If ((HPAS == 0x02))
                            {
                                HPT0 = 0xFED02000
                            }

                            If ((HPAS == 0x03))
                            {
                                HPT0 = 0xFED03000
                            }
                        }

                        Return (BUF0)
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x1800,             // Range Minimum
                            0x1800,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (LDR2)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x1854,             // Range Minimum
                            0x1854,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((WDTE == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0)
                    }
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                    Offset (0x02), 
                    Offset (0x03), 
                    Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If ((OSYS >= 0x07DC))
                        {
                            Return ("10250759")
                        }
                        Else
                        {
                            Return (0x0303D041)
                        }
                    }

                    Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If ((^^EC0.TPVD == 0x41))
                        {
                            Return (0x5020A906)
                        }
                        Else
                        {
                            If ((^^EC0.TPVD == 0x53))
                            {
                                If ((^^EC0.PJNA == 0x51))
                                {
                                    Return (0x721B2E4F)
                                }
                                Else
                                {
                                    Return (0x711B2E4F)
                                }
                            }
                            Else
                            {
                                Return (0x08058416)
                            }
                        }
                    }

                    Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                    {
                        If ((^^EC0.TPVD == 0x41))
                        {
                            Return (Package (0x01)
                            {
                                0x130FD041
                            })
                        }
                        Else
                        {
                            If ((^^EC0.TPVD == 0x53))
                            {
                                Return (Package (0x03)
                                {
                                    0x001B2E4F, 
                                    0x02002E4F, 
                                    0x130FD041
                                })
                            }
                            Else
                            {
                                Return (Package (0x01)
                                {
                                    0x130FD041
                                })
                            }
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                }
            }

            Device (WMID)
            {
                Name (_HID, "PNP0C14")  // _HID: Hardware ID
                Name (_UID, "APGe")  // _UID: Unique ID
                Name (FEBC, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (AAST, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                         
                })
                Name (AAGT, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (BEBI, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                         
                })
                Name (BKCP, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (BKGB, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                })
                Name (BKSB, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                         
                })
                Name (BLCP, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (BLSP, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                         
                })
                Name (BKMN, Buffer (0x58)
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
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (BKSN, Buffer (0x30)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (BKAT, Buffer (0x48)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (BLGB, Buffer (0x0808)
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
                    /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0100 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0110 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0118 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0120 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0128 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0130 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0138 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0140 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0148 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0150 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0158 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0160 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0170 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0178 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0180 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0188 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0190 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0198 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 01F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0200 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0208 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0210 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0218 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0220 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0228 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0230 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0238 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0240 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0250 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0258 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0260 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0268 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0270 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0278 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0280 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0288 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0290 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0298 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 02F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0300 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0308 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0310 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0318 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0320 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0328 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0330 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0338 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0340 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0348 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0350 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0358 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0360 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0368 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0370 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0378 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0380 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0388 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0390 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0398 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 03F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0400 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0408 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0410 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0418 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0420 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0428 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0430 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0438 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0440 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0448 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0450 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0458 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0460 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0468 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0470 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0478 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0480 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0488 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0490 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0498 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 04F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0500 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0508 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0510 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0518 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0520 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0528 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0530 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0538 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0540 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0548 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0550 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0558 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0560 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0568 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0570 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0578 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0580 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0588 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0590 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0598 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 05F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0600 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0608 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0610 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0618 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0620 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0628 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0630 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0638 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0640 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0648 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0650 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0658 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0660 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0668 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0670 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0678 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0680 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0688 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0690 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0698 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 06F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0700 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0708 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0710 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0718 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0720 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0728 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0730 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0738 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0740 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0748 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0750 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0758 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0760 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0768 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0770 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0778 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0780 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0788 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0790 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0798 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 07F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0800 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (ABST, Buffer (0x02)
                {
                     0x00, 0x00                                     
                })
                Name (ABGT, Buffer (0x84)
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
                    /* 0080 */  0x00, 0x00, 0x00, 0x00                         
                })
                Method (GCMS, 1, NotSerialized)
                {
                    Local0 = Zero
                    If ((DerefOf (Index (FEBC, One)) == One))
                    {
                        If ((^^LPCB.EC0.WLAN == One))
                        {
                            If ((^^LPCB.EC0.WLST == One))
                            {
                                Local0 |= One
                            }
                        }

                        If ((^^LPCB.EC0.ST3G == One))
                        {
                            If ((^^LPCB.EC0.ED3G == One))
                            {
                                Local0 |= 0x40
                            }
                        }

                        If ((^^LPCB.EC0.BLTH == One))
                        {
                            If ((^^LPCB.EC0.BLTS == One))
                            {
                                Local0 |= 0x0800
                            }
                        }
                    }
                    Else
                    {
                        If ((DerefOf (Index (FEBC, One)) == 0x02))
                        {
                            If ((^^LPCB.EC0.RFST == One))
                            {
                                Local0 |= 0x4000
                            }
                        }
                    }

                    Arg0 = Local0
                    Return (Zero)
                }

                Method (GOTS, 2, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = Zero
                    Local1 = (Arg0 & 0xFF)
                    While (One)
                    {
                        _T_0 = Local1
                        If ((_T_0 == 0x81))
                        {
                            If ((^^LPCB.EC0.ODST == Zero))
                            {
                                Local0 |= One
                            }
                        }
                        Else
                        {
                            If ((_T_0 == 0x82))
                            {
                                If ((^^LPCB.EC0.TOHP == Zero))
                                {
                                    Local0 |= 0x02
                                }
                            }
                            Else
                            {
                                If ((_T_0 == 0x84))
                                {
                                    If ((^^LPCB.EC0.KBBL == Zero))
                                    {
                                        Local0 |= 0x08
                                    }
                                }
                                Else
                                {
                                    If ((_T_0 == 0x85))
                                    {
                                        If ((^^LPCB.EC0.BBST == Zero))
                                        {
                                            Local0 |= 0x10
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }

                    Arg1 = Local0
                    Return (Zero)
                }

                Method (GBL1, 1, NotSerialized)
                {
                    Local0 = Zero
                    Arg0 = Local0
                    Return (Zero)
                }

                Method (GBL2, 1, NotSerialized)
                {
                    Local0 = Zero
                    Arg0 = Local0
                    Return (Zero)
                }

                Method (GSTY, 1, NotSerialized)
                {
                    Local0 = Zero
                    Arg0 = Local0
                    Return (Zero)
                }

                Method (GSDA, 1, NotSerialized)
                {
                    Local0 = Zero
                    Arg0 = Local0
                    Return (Zero)
                }

                Method (GTET, 1, NotSerialized)
                {
                    Local0 = Zero
                    Arg0 = Local0
                    Return (Zero)
                }

                Method (GETS, 1, NotSerialized)
                {
                    Local0 = Zero
                    Arg0 = Local0
                    Return (Zero)
                }

                Method (GDPS, 1, NotSerialized)
                {
                    Local0 = Zero
                    If ((^^LPCB.EC0.DPBL == One))
                    {
                        Local0 |= 0x04
                    }

                    Arg0 = Local0
                    Return (Zero)
                }

                OperationRegion (XCMS, SystemIO, 0x72, 0x02)
                Field (XCMS, ByteAcc, NoLock, Preserve)
                {
                    CMSI,   8, 
                    CMSD,   8
                }

                Method (CMSW, 2, NotSerialized)
                {
                    CMSI = Arg0
                    CMSD = Arg1
                }

                Method (CMSR, 1, NotSerialized)
                {
                    CMSI = Arg0
                    Return (CMSD)
                }

                Method (WSMI, 2, NotSerialized)
                {
                    MTID = Arg0
                    WMIB = Arg1
                    SSMP = 0xD0
                    Return (Zero)
                }

                Method (AWMI, 0, NotSerialized)
                {
                    If ((A01W == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_WDG, Buffer (0xB4)
                {
                    /* 0000 */  0x5E, 0xA1, 0x6A, 0x67, 0x47, 0x6A, 0x9F, 0x4D,
                    /* 0008 */  0xA2, 0xCC, 0x1E, 0x6D, 0x18, 0xD1, 0x40, 0x26,
                    /* 0010 */  0xBC, 0x00, 0x01, 0x08, 0xEA, 0x69, 0xEF, 0x61,
                    /* 0018 */  0x5C, 0x86, 0xC3, 0x4B, 0xA5, 0x02, 0xA0, 0xDE,
                    /* 0020 */  0xBA, 0x0C, 0xB5, 0x31, 0x41, 0x41, 0x01, 0x02,
                    /* 0028 */  0xC5, 0x2E, 0x77, 0x79, 0xB1, 0x04, 0xFD, 0x4B,
                    /* 0030 */  0x84, 0x3C, 0x61, 0xE7, 0xF7, 0x7B, 0x6C, 0xC9,
                    /* 0038 */  0x42, 0x45, 0x01, 0x02, 0xC6, 0x2E, 0x77, 0x79,
                    /* 0040 */  0xB1, 0x04, 0xFD, 0x4B, 0x84, 0x3C, 0x61, 0xE7,
                    /* 0048 */  0xF7, 0x7B, 0x6C, 0xC9, 0x42, 0x46, 0x01, 0x02,
                    /* 0050 */  0x66, 0x56, 0x5F, 0xF7, 0xB3, 0xB8, 0x5D, 0x4A,
                    /* 0058 */  0xA9, 0x1C, 0x74, 0x88, 0xF6, 0x2E, 0x56, 0x37,
                    /* 0060 */  0x42, 0x4B, 0x01, 0x02, 0xDA, 0xBB, 0x1D, 0xFE,
                    /* 0068 */  0x14, 0x30, 0x56, 0x48, 0x87, 0x0C, 0x5B, 0x3A,
                    /* 0070 */  0x74, 0x4B, 0xF3, 0x41, 0x42, 0x4C, 0x01, 0x02,
                    /* 0078 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                    /* 0080 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                    /* 0088 */  0x41, 0x42, 0x01, 0x00, 0xF6, 0x7E, 0xD7, 0xA9,
                    /* 0090 */  0xE0, 0x55, 0x06, 0x47, 0xB1, 0x39, 0x96, 0xAC,
                    /* 0098 */  0xE1, 0x3F, 0x22, 0x69, 0xBD, 0x00, 0x01, 0x08,
                    /* 00A0 */  0x0E, 0x13, 0x98, 0x9F, 0x48, 0x3B, 0xB3, 0x40,
                    /* 00A8 */  0x94, 0x02, 0xDE, 0x8E, 0x16, 0x0F, 0x30, 0xCC,
                    /* 00B0 */  0x41, 0x42, 0x01, 0x02                         
                })
                Name (WQAB, Buffer (0x1780)
                {
                    /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                    /* 0008 */  0x70, 0x17, 0x00, 0x00, 0xEC, 0x97, 0x00, 0x00,
                    /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                    /* 0018 */  0x18, 0x3C, 0x88, 0x00, 0x01, 0x06, 0x18, 0x42,
                    /* 0020 */  0x10, 0x15, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,
                    /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,
                    /* 0030 */  0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,
                    /* 0038 */  0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,
                    /* 0040 */  0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,
                    /* 0048 */  0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,
                    /* 0050 */  0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,
                    /* 0058 */  0x02, 0xA4, 0xC3, 0x12, 0x91, 0xE0, 0x28, 0x31,
                    /* 0060 */  0xE0, 0x28, 0x9D, 0xD8, 0xC2, 0x0D, 0x1B, 0xBC,
                    /* 0068 */  0x50, 0x14, 0xCD, 0x20, 0x4A, 0x82, 0xCA, 0x05,
                    /* 0070 */  0xF8, 0x46, 0x10, 0x78, 0xB9, 0x02, 0x24, 0x4F,
                    /* 0078 */  0x40, 0x9A, 0x05, 0x18, 0x16, 0x60, 0x5D, 0x80,
                    /* 0080 */  0xEC, 0x21, 0x50, 0xA9, 0x43, 0x40, 0xC9, 0x19,
                    /* 0088 */  0x02, 0x6A, 0x00, 0xAD, 0x4E, 0x40, 0xF8, 0x95,
                    /* 0090 */  0x4E, 0x09, 0x49, 0x10, 0xCE, 0x58, 0xC5, 0xE3,
                    /* 0098 */  0x6B, 0x16, 0x4D, 0xCF, 0x49, 0xCE, 0x31, 0xE4,
                    /* 00A0 */  0x78, 0x5C, 0xE8, 0x41, 0xF0, 0xA8, 0x12, 0x40,
                    /* 00A8 */  0x98, 0xFC, 0x21, 0x2B, 0x1C, 0x0C, 0x4A, 0xC3,
                    /* 00B0 */  0x58, 0xA8, 0x8B, 0x51, 0xA3, 0x46, 0xCA, 0x06,
                    /* 00B8 */  0x64, 0x88, 0x92, 0xE0, 0x50, 0xA3, 0xB6, 0x44,
                    /* 00C0 */  0x01, 0xE6, 0xC7, 0xA1, 0xD9, 0xB5, 0x3D, 0x16,
                    /* 00C8 */  0x02, 0xC9, 0xA4, 0x0D, 0x05, 0x25, 0x05, 0x42,
                    /* 00D0 */  0x63, 0x3B, 0x53, 0xCF, 0x28, 0xE2, 0x91, 0x1A,
                    /* 00D8 */  0x26, 0x81, 0x47, 0x11, 0xD9, 0x68, 0x1C, 0x1A,
                    /* 00E0 */  0x3B, 0x0C, 0x0F, 0x33, 0xD8, 0x41, 0x1C, 0xC6,
                    /* 00E8 */  0x31, 0x47, 0x4E, 0xE0, 0x09, 0x1D, 0xE9, 0x91,
                    /* 00F0 */  0x17, 0x36, 0x4F, 0xA1, 0xC6, 0x68, 0x0E, 0x8A,
                    /* 00F8 */  0x08, 0x3E, 0x0A, 0xA0, 0xC7, 0x14, 0xF6, 0x68,
                    /* 0100 */  0x63, 0x9F, 0xAF, 0x85, 0x0F, 0x56, 0x18, 0x47,
                    /* 0108 */  0x70, 0x5C, 0x09, 0xFE, 0xFF, 0x27, 0x7E, 0x28,
                    /* 0110 */  0x3D, 0xC2, 0x49, 0xD0, 0x14, 0x29, 0xC8, 0x51,
                    /* 0118 */  0x63, 0x64, 0xE1, 0x48, 0xEB, 0xAC, 0xC8, 0xDC,
                    /* 0120 */  0x0D, 0x6C, 0xA0, 0xCA, 0x04, 0xE8, 0x3A, 0x2F,
                    /* 0128 */  0x90, 0xF1, 0x1C, 0x08, 0x46, 0x06, 0x84, 0x3C,
                    /* 0130 */  0x9F, 0x0B, 0x34, 0x42, 0x13, 0xD8, 0xBD, 0x00,
                    /* 0138 */  0x6D, 0x02, 0xBC, 0x41, 0x68, 0x1C, 0x11, 0x1A,
                    /* 0140 */  0x13, 0x60, 0x6D, 0x12, 0xB2, 0x85, 0x43, 0xE6,
                    /* 0148 */  0x15, 0x2B, 0x4A, 0x8C, 0x63, 0x3A, 0xB2, 0x1A,
                    /* 0150 */  0x51, 0x84, 0x74, 0x0E, 0x6F, 0x06, 0x11, 0xA2,
                    /* 0158 */  0xC4, 0x0C, 0x19, 0x31, 0x58, 0x90, 0xE3, 0x88,
                    /* 0160 */  0xE1, 0x21, 0x1A, 0x2E, 0x52, 0xFB, 0x83, 0x20,
                    /* 0168 */  0xF2, 0x1E, 0x13, 0x3A, 0x0F, 0x38, 0xD2, 0x68,
                    /* 0170 */  0x50, 0x87, 0x05, 0x9F, 0x09, 0x3C, 0xB9, 0x67,
                    /* 0178 */  0x04, 0x8F, 0xED, 0x9C, 0x83, 0x9C, 0xE7, 0xB1,
                    /* 0180 */  0x3D, 0x42, 0x3C, 0x0C, 0x78, 0xD8, 0xEC, 0x96,
                    /* 0188 */  0xE0, 0xB3, 0x85, 0x4F, 0x07, 0x78, 0xD7, 0x80,
                    /* 0190 */  0xBA, 0x16, 0x3C, 0x14, 0xB0, 0x49, 0x86, 0xC3,
                    /* 0198 */  0x0C, 0xD1, 0x63, 0x0D, 0x77, 0x02, 0x87, 0xC8,
                    /* 01A0 */  0x00, 0x3D, 0xA4, 0xE7, 0x01, 0xEC, 0xDC, 0x4E,
                    /* 01A8 */  0xE6, 0xD0, 0xDF, 0x27, 0x9A, 0xBD, 0x49, 0x10,
                    /* 01B0 */  0x82, 0xE3, 0xF1, 0x25, 0x82, 0x4D, 0xF8, 0xD1,
                    /* 01B8 */  0x81, 0x0C, 0x02, 0x35, 0x32, 0x43, 0x7B, 0xA8,
                    /* 01C0 */  0xA7, 0xF5, 0x32, 0xE0, 0x63, 0x80, 0x09, 0x2C,
                    /* 01C8 */  0x16, 0x42, 0x0A, 0x20, 0x34, 0x1E, 0xF0, 0x2B,
                    /* 01D0 */  0x3E, 0x78, 0x90, 0x1B, 0x83, 0xE7, 0xEB, 0x33,
                    /* 01D8 */  0x84, 0x4E, 0x16, 0x32, 0xB2, 0x0A, 0x8F, 0x87,
                    /* 01E0 */  0x1E, 0x17, 0x7C, 0x47, 0xC0, 0x5C, 0x18, 0x3C,
                    /* 01E8 */  0x74, 0x0F, 0xE9, 0xF9, 0xC0, 0x92, 0x0E, 0x19,
                    /* 01F0 */  0xF4, 0xFF, 0x2F, 0x6A, 0xE4, 0xF4, 0x50, 0xC1,
                    /* 01F8 */  0xCF, 0x13, 0x0C, 0x36, 0x68, 0x58, 0x0F, 0xE6,
                    /* 0200 */  0x9C, 0xFC, 0x67, 0xF1, 0xD8, 0xE0, 0x03, 0xE2,
                    /* 0208 */  0xBD, 0xCF, 0x9A, 0x8C, 0xE0, 0x64, 0x0D, 0xE8,
                    /* 0210 */  0xC3, 0x03, 0xEE, 0x50, 0x01, 0x5E, 0x98, 0xC3,
                    /* 0218 */  0xE2, 0xD7, 0x0A, 0xB8, 0x87, 0x05, 0x36, 0x4A,
                    /* 0220 */  0x3E, 0x1A, 0x0F, 0xE1, 0x2C, 0x9E, 0x06, 0x0C,
                    /* 0228 */  0x63, 0xF4, 0xA7, 0x00, 0xD8, 0x37, 0x0C, 0x8F,
                    /* 0230 */  0xC5, 0x53, 0xF0, 0x49, 0x07, 0x1C, 0x83, 0xE3,
                    /* 0238 */  0x57, 0x18, 0xDC, 0x49, 0x07, 0x78, 0xCC, 0xF5,
                    /* 0240 */  0x49, 0x07, 0x6C, 0xE7, 0x03, 0x76, 0xCA, 0x81,
                    /* 0248 */  0x25, 0xE1, 0x94, 0x84, 0x0A, 0x3D, 0x6E, 0xD4,
                    /* 0250 */  0xFF, 0x9F, 0xC0, 0x81, 0x07, 0x4F, 0xE5, 0x0D,
                    /* 0258 */  0x16, 0x14, 0x10, 0xC7, 0xF1, 0x76, 0xF0, 0x9A,
                    /* 0260 */  0x04, 0xE3, 0x98, 0x04, 0xF0, 0xF1, 0x68, 0xC0,
                    /* 0268 */  0x2E, 0x1D, 0x8F, 0x49, 0xF0, 0xFF, 0xFF, 0xC7,
                    /* 0270 */  0x24, 0xB0, 0x1D, 0x07, 0xCE, 0xE8, 0x64, 0xDE,
                    /* 0278 */  0x90, 0x22, 0x9C, 0xC3, 0x0B, 0xD2, 0x83, 0xD1,
                    /* 0280 */  0xEB, 0xD1, 0x7B, 0xD2, 0x83, 0x92, 0xE7, 0xF5,
                    /* 0288 */  0x98, 0x64, 0xAC, 0x20, 0xA1, 0xAC, 0xF0, 0x82,
                    /* 0290 */  0x24, 0x67, 0xA8, 0x42, 0x09, 0xF1, 0xB8, 0xE4,
                    /* 0298 */  0xDB, 0x82, 0x91, 0x8C, 0x7C, 0x26, 0x6F, 0x49,
                    /* 02A0 */  0xC6, 0x7A, 0x4C, 0x02, 0x98, 0xF8, 0xFF, 0x3F,
                    /* 02A8 */  0x26, 0x01, 0xCF, 0x43, 0x05, 0xDC, 0x63, 0x12,
                    /* 02B0 */  0xE0, 0x64, 0x70, 0xEC, 0x7C, 0x09, 0xAC, 0x8E,
                    /* 02B8 */  0x49, 0xC0, 0x25, 0xAA, 0x09, 0x10, 0x16, 0xE0,
                    /* 02C0 */  0x8D, 0x20, 0x59, 0xEB, 0xA6, 0x30, 0x3E, 0xE5,
                    /* 02C8 */  0x80, 0xE7, 0xFF, 0x7F, 0xCA, 0x01, 0x1C, 0xDC,
                    /* 02D0 */  0x25, 0x7C, 0x6E, 0x03, 0x2B, 0xC6, 0xF3, 0x86,
                    /* 02D8 */  0x45, 0x03, 0x6A, 0x04, 0xCF, 0x0F, 0xB0, 0x0F,
                    /* 02E0 */  0x97, 0xF0, 0x2F, 0x94, 0xBE, 0xE4, 0x78, 0x52,
                    /* 02E8 */  0x41, 0x0E, 0xE5, 0xF5, 0x26, 0x76, 0x98, 0xD7,
                    /* 02F0 */  0x9C, 0xE7, 0x4A, 0x0F, 0xED, 0x21, 0x27, 0xC8,
                    /* 02F8 */  0xFB, 0xCD, 0xC3, 0xA5, 0x91, 0x1E, 0x2B, 0x8D,
                    /* 0300 */  0x62, 0x90, 0x33, 0x8B, 0x1A, 0x2D, 0x8A, 0xF1,
                    /* 0308 */  0x82, 0x44, 0x8B, 0x78, 0x04, 0x8F, 0x39, 0x2C,
                    /* 0310 */  0xD6, 0x81, 0x40, 0xFF, 0x28, 0x1F, 0x73, 0x00,
                    /* 0318 */  0x47, 0xFF, 0xFF, 0x63, 0x0E, 0x70, 0x3F, 0xCC,
                    /* 0320 */  0x81, 0xE3, 0xB4, 0xC0, 0x47, 0xC5, 0xAF, 0x0C,
                    /* 0328 */  0xEC, 0x4C, 0x02, 0x4C, 0xA2, 0x3C, 0x3D, 0x34,
                    /* 0330 */  0x4E, 0x6B, 0x7C, 0x0E, 0xC8, 0xC6, 0x49, 0x88,
                    /* 0338 */  0x0E, 0xC2, 0x4A, 0xA8, 0x74, 0x62, 0x31, 0xE6,
                    /* 0340 */  0x5B, 0x43, 0xDC, 0x67, 0x03, 0xCF, 0x07, 0x93,
                    /* 0348 */  0xFE, 0xA0, 0xA0, 0xF3, 0x8F, 0xC1, 0x9D, 0x9B,
                    /* 0350 */  0x44, 0xB9, 0x07, 0x44, 0xE1, 0x9D, 0xF4, 0x18,
                    /* 0358 */  0x44, 0x41, 0x0C, 0xE8, 0x18, 0x10, 0xB2, 0x72,
                    /* 0360 */  0x10, 0x40, 0x5F, 0x27, 0x7C, 0x64, 0xF0, 0x39,
                    /* 0368 */  0x23, 0xCA, 0x19, 0xF9, 0x80, 0xF1, 0xB8, 0xC0,
                    /* 0370 */  0x86, 0xE3, 0x83, 0x00, 0x3F, 0xA0, 0xF8, 0x66,
                    /* 0378 */  0x60, 0x6C, 0xAB, 0x39, 0xEE, 0xA0, 0xC0, 0x0C,
                    /* 0380 */  0xFF, 0x02, 0x63, 0x02, 0xDF, 0x33, 0xDE, 0x76,
                    /* 0388 */  0xC0, 0x72, 0xC6, 0x78, 0x2C, 0xB1, 0xBE, 0xC3,
                    /* 0390 */  0x00, 0x94, 0xFF, 0xFF, 0x61, 0x00, 0x0F, 0xE4,
                    /* 0398 */  0xE9, 0xFB, 0x44, 0xF3, 0x08, 0xC0, 0xC6, 0xF0,
                    /* 03A0 */  0x50, 0x63, 0x34, 0xA3, 0xF3, 0xF8, 0x73, 0x45,
                    /* 03A8 */  0x5D, 0x1F, 0x3D, 0x57, 0x83, 0x78, 0xAE, 0x0E,
                    /* 03B0 */  0x03, 0x21, 0x27, 0x73, 0x45, 0xDD, 0x5E, 0x3C,
                    /* 03B8 */  0x22, 0xFB, 0x9C, 0x2A, 0x19, 0x2C, 0x27, 0x88,
                    /* 03C0 */  0xF2, 0xAA, 0x01, 0xEB, 0x20, 0x10, 0x91, 0xCD,
                    /* 03C8 */  0xC3, 0x77, 0x25, 0xFC, 0x6C, 0xF9, 0x60, 0x7C,
                    /* 03D0 */  0x95, 0x80, 0x3F, 0x5C, 0x7E, 0x2A, 0x79, 0x37,
                    /* 03D8 */  0x49, 0x60, 0x81, 0xD3, 0x05, 0x39, 0x3C, 0x46,
                    /* 03E0 */  0xD0, 0x7A, 0x64, 0xE1, 0x2E, 0x45, 0xC7, 0xC5,
                    /* 03E8 */  0x6F, 0x07, 0xBE, 0xF1, 0xB0, 0x3B, 0x0D, 0xEE,
                    /* 03F0 */  0x22, 0x86, 0x81, 0xF5, 0x48, 0x39, 0xAC, 0xD1,
                    /* 03F8 */  0xC2, 0x1E, 0xF0, 0x1B, 0x87, 0x8F, 0x2B, 0x9E,
                    /* 0400 */  0x99, 0x31, 0xC2, 0xFA, 0x9E, 0x02, 0x8E, 0x3B,
                    /* 0408 */  0x19, 0xFC, 0x00, 0x57, 0x20, 0x10, 0xFE, 0xFF,
                    /* 0410 */  0xAF, 0x40, 0xFC, 0xAC, 0xC1, 0xAE, 0x64, 0x06,
                    /* 0418 */  0x79, 0x51, 0xF2, 0xB9, 0xC6, 0xE8, 0x81, 0xDE,
                    /* 0420 */  0x37, 0xF0, 0x37, 0x21, 0xD8, 0x37, 0x10, 0x38,
                    /* 0428 */  0x43, 0xF1, 0x0D, 0x04, 0x38, 0x1C, 0x23, 0x70,
                    /* 0430 */  0x37, 0x10, 0x60, 0x7D, 0x87, 0x60, 0x37, 0x10,
                    /* 0438 */  0x60, 0x79, 0x7A, 0xC1, 0xDD, 0x40, 0x80, 0xDB,
                    /* 0440 */  0xFF, 0xFF, 0xFE, 0x02, 0xA6, 0x1B, 0x08, 0x30,
                    /* 0448 */  0x1F, 0xB5, 0x6F, 0x20, 0x80, 0xA5, 0xB3, 0x06,
                    /* 0450 */  0xBB, 0x81, 0x80, 0x3F, 0xA2, 0x8F, 0xF1, 0xB0,
                    /* 0458 */  0x18, 0x43, 0x97, 0xB4, 0x85, 0x53, 0x18, 0x9F,
                    /* 0460 */  0x12, 0x81, 0xD3, 0xFF, 0xFF, 0x94, 0x08, 0xBC,
                    /* 0468 */  0xCE, 0x15, 0x3E, 0x01, 0x80, 0xED, 0x32, 0xCA,
                    /* 0470 */  0x86, 0xFE, 0x6E, 0xE0, 0x8B, 0x22, 0x18, 0x0F,
                    /* 0478 */  0x8A, 0xB0, 0x47, 0xF5, 0x42, 0x10, 0x22, 0xE8,
                    /* 0480 */  0x1B, 0xB5, 0x27, 0xF6, 0x52, 0xF1, 0x82, 0x18,
                    /* 0488 */  0xE4, 0xE9, 0xF0, 0xDC, 0x22, 0x3D, 0x28, 0x1A,
                    /* 0490 */  0x29, 0xCC, 0x83, 0xA2, 0x11, 0xC3, 0xF8, 0xA0,
                    /* 0498 */  0xE8, 0x73, 0xA2, 0xE1, 0xDE, 0xAE, 0x7D, 0xDE,
                    /* 04A0 */  0x88, 0x14, 0x3E, 0xB6, 0x6F, 0x1A, 0x11, 0x1E,
                    /* 04A8 */  0x14, 0x59, 0xA8, 0x83, 0x22, 0xA0, 0xF2, 0xFF,
                    /* 04B0 */  0x7F, 0x50, 0x04, 0x6E, 0x47, 0x61, 0x70, 0x5C,
                    /* 04B8 */  0x97, 0xF9, 0x0C, 0xCE, 0x25, 0xB6, 0x07, 0xF8,
                    /* 04C0 */  0x9C, 0x08, 0x4C, 0xE4, 0xAF, 0x50, 0xC3, 0x74,
                    /* 04C8 */  0x9E, 0xB7, 0x8C, 0x6E, 0x55, 0x9C, 0xC3, 0xCA,
                    /* 04D0 */  0xDF, 0x07, 0x3A, 0x6C, 0xB1, 0xE3, 0xC2, 0x09,
                    /* 04D8 */  0xBE, 0x05, 0x9D, 0x92, 0x71, 0x3C, 0x6A, 0x0F,
                    /* 04E0 */  0xDF, 0x23, 0xB2, 0x52, 0x48, 0xDD, 0xAB, 0xB8,
                    /* 04E8 */  0x46, 0x18, 0x29, 0x7C, 0x1E, 0xE8, 0x70, 0xC4,
                    /* 04F0 */  0x35, 0xC1, 0x08, 0xCE, 0x20, 0x3E, 0x95, 0x38,
                    /* 04F8 */  0x09, 0x84, 0x8C, 0x9C, 0x04, 0x50, 0xA3, 0xF3,
                    /* 0500 */  0x65, 0x05, 0x3F, 0xBE, 0x40, 0x8F, 0x0C, 0x09,
                    /* 0508 */  0x4E, 0xEC, 0xCD, 0x0A, 0xBC, 0x17, 0x6D, 0x70,
                    /* 0510 */  0x05, 0x99, 0x14, 0x5A, 0xCB, 0xE5, 0x9D, 0x0C,
                    /* 0518 */  0xCA, 0x47, 0x89, 0x97, 0x10, 0x1C, 0xC1, 0xFF,
                    /* 0520 */  0xFF, 0xA0, 0xC0, 0x7A, 0xCC, 0xE3, 0x83, 0x02,
                    /* 0528 */  0xCF, 0x01, 0xCD, 0x83, 0xC2, 0x29, 0xB9, 0x08,
                    /* 0530 */  0xF8, 0xD2, 0x42, 0xEE, 0x28, 0x3E, 0x52, 0x78,
                    /* 0538 */  0x4C, 0x60, 0xBE, 0x37, 0xF1, 0x31, 0x81, 0x27,
                    /* 0540 */  0xC5, 0x98, 0xD0, 0x57, 0x1F, 0x76, 0xA3, 0x60,
                    /* 0548 */  0xC7, 0x8A, 0x67, 0x28, 0x4F, 0x09, 0xBC, 0x48,
                    /* 0550 */  0x9E, 0x12, 0xB8, 0x42, 0x4D, 0xC9, 0xC7, 0x0A,
                    /* 0558 */  0x3A, 0x6B, 0x7E, 0x33, 0xE0, 0x93, 0xE2, 0x04,
                    /* 0560 */  0x13, 0x40, 0xE8, 0x2E, 0xE3, 0x31, 0xC1, 0xBB,
                    /* 0568 */  0xF5, 0xC3, 0xBB, 0x61, 0x79, 0x68, 0xB0, 0xE6,
                    /* 0570 */  0xE0, 0xA1, 0xF1, 0xFF, 0xFF, 0xD0, 0xC0, 0x71,
                    /* 0578 */  0xD9, 0x03, 0x16, 0xAF, 0x07, 0x5F, 0x40, 0x78,
                    /* 0580 */  0xE4, 0x13, 0x04, 0x05, 0xF1, 0x01, 0xC1, 0x71,
                    /* 0588 */  0xCE, 0x8E, 0xBE, 0x80, 0xA0, 0x0F, 0x0E, 0x1E,
                    /* 0590 */  0xD0, 0x43, 0x93, 0x87, 0x74, 0x2A, 0xEF, 0x16,
                    /* 0598 */  0xBE, 0xDB, 0xB0, 0xDB, 0x1E, 0xB8, 0x6F, 0x73,
                    /* 05A0 */  0xBE, 0xED, 0x81, 0xE7, 0xBC, 0xE4, 0xDB, 0x1E,
                    /* 05A8 */  0x70, 0x11, 0x73, 0x7E, 0x05, 0xA4, 0xFC, 0xFF,
                    /* 05B0 */  0x6F, 0x7B, 0x98, 0xFB, 0xD9, 0xF3, 0x2B, 0x30,
                    /* 05B8 */  0x38, 0x5D, 0xB0, 0xC3, 0x1E, 0xD8, 0xB2, 0x3E,
                    /* 05C0 */  0x2B, 0x74, 0x2F, 0xC2, 0xA5, 0x5A, 0xB9, 0x8E,
                    /* 05C8 */  0x80, 0xEC, 0x5E, 0x04, 0x33, 0x05, 0xA4, 0xEE,
                    /* 05D0 */  0x45, 0x5C, 0x3F, 0x8C, 0xF4, 0xDD, 0x8B, 0x50,
                    /* 05D8 */  0x8A, 0xEE, 0x45, 0x14, 0xC4, 0xF7, 0x22, 0x80,
                    /* 05E0 */  0x21, 0xFF, 0xFF, 0x7B, 0x11, 0xE0, 0x23, 0xC4,
                    /* 05E8 */  0x98, 0xD0, 0x3A, 0x80, 0xC9, 0xB9, 0xE0, 0x84,
                    /* 05F0 */  0x9E, 0x8B, 0x80, 0x6D, 0xA6, 0x73, 0x11, 0x1A,
                    /* 05F8 */  0xD8, 0x27, 0x03, 0x3E, 0x28, 0x76, 0x2D, 0x02,
                    /* 0600 */  0xF3, 0x25, 0xC6, 0xD7, 0x22, 0xC0, 0xC3, 0xFF,
                    /* 0608 */  0x9F, 0xC0, 0xF2, 0x5E, 0x06, 0xBA, 0x7F, 0x70,
                    /* 0610 */  0x41, 0x30, 0x3A, 0x40, 0x18, 0xC4, 0x73, 0xF2,
                    /* 0618 */  0xB5, 0x08, 0x70, 0x13, 0x65, 0x5C, 0xE8, 0x2B,
                    /* 0620 */  0x1A, 0x9C, 0x51, 0x81, 0xFB, 0x58, 0xE0, 0x51,
                    /* 0628 */  0x81, 0xEF, 0x94, 0x86, 0xBF, 0x0A, 0xF9, 0x8C,
                    /* 0630 */  0x86, 0x39, 0x68, 0xB0, 0x63, 0x80, 0x07, 0x05,
                    /* 0638 */  0xAE, 0x4B, 0x1A, 0x6E, 0x6C, 0xF0, 0x3C, 0x5C,
                    /* 0640 */  0x1F, 0x40, 0x77, 0xCB, 0xE2, 0xFF, 0xFF, 0x5B,
                    /* 0648 */  0x16, 0xF0, 0x3D, 0xA3, 0x03, 0xDF, 0x5B, 0x16,
                    /* 0650 */  0x98, 0xCF, 0xE8, 0x98, 0x5B, 0x16, 0x38, 0x25,
                    /* 0658 */  0x3F, 0x0A, 0x7C, 0x76, 0xA6, 0x72, 0x97, 0x4D,
                    /* 0660 */  0x61, 0x7C, 0x42, 0x07, 0x7C, 0xFC, 0xFF, 0x4F,
                    /* 0668 */  0xE8, 0x70, 0x8F, 0x4D, 0x1E, 0x3F, 0x38, 0x4E,
                    /* 0670 */  0x0F, 0x67, 0x70, 0x0A, 0xD1, 0x5E, 0xF5, 0x3D,
                    /* 0678 */  0xF1, 0xB7, 0x27, 0x0F, 0x29, 0x4A, 0xC0, 0x78,
                    /* 0680 */  0x31, 0xE2, 0x86, 0xF4, 0xA9, 0xDA, 0xD7, 0x66,
                    /* 0688 */  0x03, 0xC5, 0x3B, 0xAC, 0xB0, 0x71, 0x5E, 0x03,
                    /* 0690 */  0x7C, 0x78, 0x7E, 0x0D, 0xF0, 0xD9, 0xC0, 0x40,
                    /* 0698 */  0x67, 0xFA, 0xD4, 0x0F, 0xFB, 0xA0, 0x0E, 0xDB,
                    /* 06A0 */  0xDB, 0xE4, 0x04, 0x11, 0x21, 0xF0, 0x8B, 0xC5,
                    /* 06A8 */  0x39, 0xB5, 0x76, 0x41, 0xD7, 0x08, 0x0F, 0xF1,
                    /* 06B0 */  0x01, 0xEE, 0xAD, 0xE4, 0x41, 0xDD, 0x43, 0x79,
                    /* 06B8 */  0x7A, 0x8A, 0x1A, 0xE5, 0x14, 0xC2, 0xBC, 0xA2,
                    /* 06C0 */  0x07, 0x8C, 0xF2, 0x6C, 0x12, 0x2D, 0x6A, 0xE0,
                    /* 06C8 */  0x97, 0x84, 0xD8, 0x06, 0x0D, 0xF4, 0x9E, 0xEE,
                    /* 06D0 */  0x11, 0x3C, 0xA8, 0xB3, 0x68, 0x07, 0x75, 0x40,
                    /* 06D8 */  0xF5, 0xFF, 0xFF, 0xA0, 0x0E, 0xEE, 0xEB, 0x8C,
                    /* 06E0 */  0x4F, 0x30, 0xF0, 0xCF, 0x01, 0x4F, 0x0A, 0xB8,
                    /* 06E8 */  0xBB, 0x93, 0xEF, 0x0C, 0x18, 0x02, 0x9F, 0xD5,
                    /* 06F0 */  0x81, 0x47, 0xF4, 0xDB, 0x22, 0x8D, 0x0D, 0xA2,
                    /* 06F8 */  0x3B, 0x24, 0x3F, 0xCA, 0x38, 0xE4, 0x72, 0x75,
                    /* 0700 */  0x87, 0xE4, 0x53, 0x62, 0x17, 0x04, 0xC3, 0x1F,
                    /* 0708 */  0x42, 0x10, 0x0F, 0x8B, 0x4D, 0xC1, 0x67, 0x04,
                    /* 0710 */  0x13, 0x38, 0xCE, 0x81, 0x8B, 0x0E, 0xDE, 0x41,
                    /* 0718 */  0x28, 0x14, 0xE5, 0x76, 0x8B, 0x12, 0x0F, 0x23,
                    /* 0720 */  0x38, 0x83, 0xF8, 0xA8, 0xE0, 0x40, 0x10, 0x72,
                    /* 0728 */  0x72, 0x1E, 0x40, 0x9D, 0x4F, 0x3C, 0xA9, 0x93,
                    /* 0730 */  0xC5, 0xCE, 0x05, 0x37, 0x3B, 0x1F, 0x6A, 0x7C,
                    /* 0738 */  0xE8, 0x79, 0x93, 0x04, 0xEF, 0x9D, 0xE3, 0x45,
                    /* 0740 */  0x09, 0x2C, 0x37, 0x8D, 0x57, 0x8E, 0xD7, 0x4D,
                    /* 0748 */  0x36, 0x30, 0xDC, 0x51, 0xD2, 0x03, 0xC3, 0xFF,
                    /* 0750 */  0xFF, 0x8F, 0x02, 0xC7, 0x75, 0x52, 0xE0, 0x1D,
                    /* 0758 */  0xB3, 0x27, 0x05, 0xB6, 0xC3, 0x1D, 0xB0, 0x08,
                    /* 0760 */  0x8F, 0x4E, 0x61, 0x1C, 0x77, 0x48, 0x14, 0xC4,
                    /* 0768 */  0xA7, 0x03, 0x9F, 0xDA, 0x3C, 0x5A, 0xDC, 0x4C,
                    /* 0770 */  0x3C, 0xA2, 0x97, 0x3B, 0xDC, 0xA9, 0x0D, 0xEC,
                    /* 0778 */  0x23, 0xF1, 0xA9, 0x0D, 0x3C, 0xA3, 0x65, 0x67,
                    /* 0780 */  0x31, 0x60, 0x22, 0xE4, 0x2C, 0x06, 0xBA, 0x21,
                    /* 0788 */  0xFB, 0x2C, 0x06, 0xFF, 0xFF, 0x7F, 0x16, 0x03,
                    /* 0790 */  0x2E, 0xC7, 0x00, 0x1F, 0x9E, 0xC0, 0x71, 0x0D,
                    /* 0798 */  0xE3, 0x07, 0x26, 0x2C, 0xD0, 0xB3, 0x07, 0xC7,
                    /* 07A0 */  0x79, 0x72, 0x32, 0x30, 0x07, 0x63, 0x57, 0x13,
                    /* 07A8 */  0xEC, 0x6D, 0xC2, 0x04, 0x95, 0xF9, 0x19, 0x0B,
                    /* 07B0 */  0x8B, 0x31, 0x6C, 0x09, 0x5C, 0x34, 0x85, 0xF1,
                    /* 07B8 */  0x49, 0x0C, 0x70, 0x35, 0x7A, 0xF0, 0x9C, 0xC4,
                    /* 07C0 */  0x60, 0xCD, 0x9D, 0x21, 0x19, 0xD5, 0x88, 0xEF,
                    /* 07C8 */  0x04, 0xBE, 0x82, 0xC1, 0x3E, 0x82, 0xE1, 0xFF,
                    /* 07D0 */  0xFF, 0x47, 0x30, 0xEC, 0xA1, 0xEB, 0x6D, 0xE2,
                    /* 07D8 */  0xB5, 0xEB, 0x88, 0x9E, 0x5C, 0x22, 0xC4, 0x78,
                    /* 07E0 */  0xA5, 0x78, 0xF5, 0x7A, 0xC2, 0x38, 0xB5, 0x48,
                    /* 07E8 */  0x07, 0xF7, 0x08, 0xE6, 0x01, 0xBC, 0x86, 0xBD,
                    /* 07F0 */  0x7A, 0x3D, 0x82, 0xF9, 0xF4, 0x15, 0xEB, 0x11,
                    /* 07F8 */  0xCC, 0x40, 0x41, 0x23, 0x06, 0x0D, 0x14, 0xEF,
                    /* 0800 */  0x61, 0xCC, 0x03, 0x88, 0x13, 0x24, 0xF0, 0x23,
                    /* 0808 */  0x18, 0xC0, 0x28, 0xAB, 0x17, 0x05, 0xE4, 0x95,
                    /* 0810 */  0x12, 0x7F, 0x04, 0x03, 0xF3, 0xFF, 0xFF, 0x08,
                    /* 0818 */  0x86, 0xCF, 0xEB, 0xE6, 0x24, 0xC3, 0xF4, 0x50,
                    /* 0820 */  0xE8, 0x08, 0xC6, 0x8F, 0x04, 0x56, 0xF0, 0x44,
                    /* 0828 */  0x10, 0xFE, 0x7B, 0x4C, 0xE0, 0xB3, 0x79, 0x24,
                    /* 0830 */  0x38, 0x86, 0x67, 0x0A, 0x76, 0x61, 0x79, 0xA0,
                    /* 0838 */  0xF0, 0x74, 0x9D, 0xF9, 0x40, 0x46, 0x07, 0xEE,
                    /* 0840 */  0xB4, 0x30, 0x52, 0x75, 0x8A, 0x46, 0xE9, 0x38,
                    /* 0848 */  0x85, 0x51, 0x10, 0x1F, 0x1A, 0x7C, 0x3C, 0xC6,
                    /* 0850 */  0x0F, 0xCE, 0x93, 0xC0, 0x1F, 0x90, 0xF9, 0xD9,
                    /* 0858 */  0x0B, 0x18, 0x5E, 0x8F, 0xD9, 0xF1, 0x18, 0x3F,
                    /* 0860 */  0x30, 0xCF, 0x14, 0xC6, 0x65, 0x1D, 0xBC, 0x37,
                    /* 0868 */  0x07, 0x9F, 0xC0, 0x60, 0x1E, 0x8F, 0xC1, 0x75,
                    /* 0870 */  0x2A, 0xC5, 0x1D, 0x2D, 0xF8, 0x2D, 0xD0, 0xE7,
                    /* 0878 */  0x8F, 0xA7, 0x1F, 0x9F, 0xE4, 0x3C, 0x7A, 0xB0,
                    /* 0880 */  0xFD, 0xFF, 0xA7, 0x84, 0xB9, 0x1E, 0x78, 0xF4,
                    /* 0888 */  0xF0, 0x6F, 0x1F, 0xD8, 0x3B, 0x1A, 0xB0, 0x88,
                    /* 0890 */  0x75, 0x11, 0x44, 0x05, 0xB9, 0x08, 0x52, 0x10,
                    /* 0898 */  0x4F, 0xCC, 0xF7, 0x79, 0xDF, 0xD1, 0x70, 0xF7,
                    /* 08A0 */  0x79, 0xE0, 0x05, 0xE5, 0x5B, 0x1A, 0xF8, 0x62,
                    /* 08A8 */  0x8D, 0x0B, 0x2D, 0xEA, 0xF2, 0x00, 0x65, 0x02,
                    /* 08B0 */  0x61, 0x4E, 0x24, 0xF8, 0x93, 0x48, 0x84, 0x87,
                    /* 08B8 */  0x22, 0x5F, 0xC6, 0xD8, 0xD8, 0xC0, 0x7E, 0xA0,
                    /* 08C0 */  0xF0, 0x85, 0x0E, 0x98, 0xFC, 0xFF, 0x2F, 0x74,
                    /* 08C8 */  0x60, 0x13, 0x71, 0xA1, 0x03, 0xDD, 0x3D, 0x83,
                    /* 08D0 */  0x5F, 0xE8, 0x80, 0xE7, 0x75, 0xC3, 0x77, 0x30,
                    /* 08D8 */  0xB0, 0x5C, 0x71, 0xF8, 0x1D, 0x8C, 0xDF, 0xC0,
                    /* 08E0 */  0x0C, 0x12, 0x26, 0x66, 0x18, 0x1F, 0xD5, 0x8C,
                    /* 08E8 */  0xF3, 0x1C, 0xC6, 0x90, 0x9E, 0x12, 0xB0, 0x27,
                    /* 08F0 */  0x0F, 0xE7, 0xBB, 0xF7, 0xA0, 0x86, 0xE2, 0x4C,
                    /* 08F8 */  0xAF, 0x02, 0x4D, 0xFD, 0x7C, 0x7D, 0x7A, 0x81,
                    /* 0900 */  0x91, 0x03, 0x4E, 0xD7, 0x1E, 0x9E, 0x00, 0x46,
                    /* 0908 */  0xFA, 0x97, 0xAF, 0xC3, 0x06, 0x57, 0x7C, 0xFB,
                    /* 0910 */  0xA1, 0x20, 0xBE, 0x92, 0x38, 0xCD, 0xB5, 0x07,
                    /* 0918 */  0xAD, 0x07, 0x44, 0x3E, 0xC7, 0xAE, 0x21, 0x3C,
                    /* 0920 */  0xF8, 0x00, 0xAF, 0xFF, 0xFF, 0xC1, 0x07, 0x3C,
                    /* 0928 */  0xB9, 0x0E, 0x3E, 0xE8, 0xC1, 0x78, 0x5A, 0xB0,
                    /* 0930 */  0x6E, 0x3E, 0x80, 0x83, 0x23, 0x00, 0x9C, 0x2B,
                    /* 0938 */  0xD7, 0xC9, 0x1F, 0xD9, 0x23, 0x00, 0xB0, 0x39,
                    /* 0940 */  0xFD, 0x80, 0xE3, 0x08, 0x00, 0x86, 0x69, 0xC1,
                    /* 0948 */  0x3A, 0x02, 0x00, 0x27, 0x24, 0x1F, 0x01, 0xB0,
                    /* 0950 */  0xFF, 0xFF, 0xBB, 0x14, 0xF0, 0x1E, 0xA6, 0xEF,
                    /* 0958 */  0x52, 0xC0, 0xF9, 0x0B, 0xE1, 0xFB, 0x08, 0x8F,
                    /* 0960 */  0x7C, 0x8D, 0xA0, 0x20, 0xBE, 0x22, 0xF8, 0x2E,
                    /* 0968 */  0x05, 0x3C, 0x2F, 0x40, 0xBE, 0x20, 0x01, 0x6F,
                    /* 0970 */  0x09, 0x17, 0x24, 0xF4, 0xFF, 0xFF, 0x82, 0x04,
                    /* 0978 */  0x7F, 0xD8, 0xBE, 0x20, 0x01, 0x57, 0x54, 0x5F,
                    /* 0980 */  0x90, 0xC0, 0x71, 0x17, 0x62, 0xF7, 0x23, 0xB0,
                    /* 0988 */  0x6A, 0xFD, 0x51, 0xE8, 0x7E, 0xC4, 0x39, 0xAC,
                    /* 0990 */  0x74, 0xD1, 0x3A, 0x55, 0xB3, 0x0B, 0xEE, 0x71,
                    /* 0998 */  0xBE, 0xE5, 0xBC, 0x03, 0x18, 0xC7, 0x73, 0xF1,
                    /* 09A0 */  0x79, 0xC2, 0xF8, 0xCF, 0xD2, 0x82, 0xD4, 0x0D,
                    /* 09A8 */  0x89, 0x6B, 0x82, 0x91, 0xB6, 0x83, 0x26, 0x4A,
                    /* 09B0 */  0xCD, 0x41, 0x93, 0x82, 0xF8, 0xA0, 0x09, 0xF8,
                    /* 09B8 */  0xFA, 0xFF, 0x5F, 0x8F, 0x00, 0x1F, 0x61, 0xC6,
                    /* 09C0 */  0x8F, 0x9E, 0x8C, 0xEF, 0x04, 0xF8, 0xF3, 0xB3,
                    /* 09C8 */  0x8F, 0x24, 0x3E, 0x82, 0x3F, 0x1E, 0x01, 0xD3,
                    /* 09D0 */  0xFB, 0x0C, 0xB0, 0x88, 0x7D, 0x7B, 0x40, 0x05,
                    /* 09D8 */  0xBD, 0x3D, 0x50, 0x10, 0x5F, 0x4A, 0x7C, 0xD6,
                    /* 09E0 */  0x04, 0xD6, 0xFF, 0xFF, 0xFB, 0x0C, 0x58, 0x2E,
                    /* 09E8 */  0x19, 0xF8, 0xDB, 0x3F, 0xBB, 0x3F, 0x3C, 0xA0,
                    /* 09F0 */  0xFB, 0x8A, 0xC1, 0x4F, 0x99, 0xC0, 0xF3, 0x50,
                    /* 09F8 */  0xC0, 0x2E, 0x19, 0x30, 0x4E, 0x14, 0x1E, 0x15,
                    /* 0A00 */  0x27, 0x70, 0x88, 0x61, 0xD0, 0x41, 0x81, 0xEB,
                    /* 0A08 */  0x90, 0xC1, 0x69, 0x7C, 0x3F, 0x82, 0x7B, 0xC9,
                    /* 0A10 */  0x00, 0x57, 0xB0, 0xA1, 0xA1, 0xA5, 0x1C, 0x13,
                    /* 0A18 */  0xE8, 0xF1, 0x86, 0x9D, 0xE3, 0x7D, 0xEF, 0x61,
                    /* 0A20 */  0x83, 0x03, 0xF7, 0x21, 0xC3, 0x83, 0x83, 0x77,
                    /* 0A28 */  0xDB, 0xF0, 0xE0, 0x60, 0xFE, 0xFF, 0x07, 0x07,
                    /* 0A30 */  0xE3, 0x2A, 0x05, 0x3C, 0x82, 0x8F, 0x1D, 0x75,
                    /* 0A38 */  0x95, 0x02, 0xC7, 0xB9, 0x8E, 0x5F, 0xA5, 0x80,
                    /* 0A40 */  0xE7, 0x00, 0x5F, 0xA5, 0xC0, 0x72, 0x6D, 0x62,
                    /* 0A48 */  0x73, 0x78, 0x6E, 0xE2, 0x57, 0x29, 0x1F, 0x6A,
                    /* 0A50 */  0xB0, 0x57, 0x18, 0x5F, 0x6F, 0x74, 0x6A, 0x45,
                    /* 0A58 */  0x71, 0x38, 0xCA, 0xA9, 0x15, 0x71, 0x8B, 0x82,
                    /* 0A60 */  0x29, 0xFD, 0xDC, 0x8A, 0x12, 0x0D, 0x23, 0xC9,
                    /* 0A68 */  0xE7, 0x56, 0x94, 0xC8, 0x73, 0x2B, 0x05, 0xF1,
                    /* 0A70 */  0x09, 0xC1, 0xB7, 0x28, 0x60, 0xF5, 0xFF, 0xBF,
                    /* 0A78 */  0x45, 0x01, 0x96, 0x0F, 0xAD, 0x70, 0x00, 0x1F,
                    /* 0A80 */  0xA3, 0x00, 0x07, 0x17, 0x51, 0x5F, 0x83, 0xE0,
                    /* 0A88 */  0x8F, 0x09, 0xAC, 0x48, 0x1E, 0x13, 0x18, 0xFE,
                    /* 0A90 */  0xFF, 0x63, 0xC2, 0x05, 0xBA, 0x23, 0xA0, 0x55,
                    /* 0A98 */  0x5C, 0x82, 0x90, 0x37, 0x04, 0xF0, 0xD2, 0xF8,
                    /* 0AA0 */  0xC4, 0x0A, 0xF3, 0x86, 0x00, 0xAE, 0x0B, 0x2B,
                    /* 0AA8 */  0xC0, 0xA2, 0x63, 0x11, 0xF6, 0xFF, 0x7F, 0x2C,
                    /* 0AB0 */  0x02, 0xC3, 0xCD, 0x80, 0x1F, 0x8B, 0x00, 0x1F,
                    /* 0AB8 */  0x17, 0x56, 0x7E, 0x2C, 0x82, 0x2F, 0xE3, 0x58,
                    /* 0AC0 */  0x84, 0x96, 0x71, 0x2C, 0x42, 0x88, 0x1C, 0x87,
                    /* 0AC8 */  0x10, 0x1E, 0x6E, 0x60, 0x1C, 0x0D, 0x75, 0x1E,
                    /* 0AD0 */  0xA2, 0xA7, 0x06, 0x07, 0x86, 0x51, 0xDC, 0xE3,
                    /* 0AD8 */  0x21, 0x2A, 0xE0, 0xF1, 0x90, 0x82, 0xF8, 0x08,
                    /* 0AE0 */  0xE0, 0x20, 0x17, 0x14, 0xF4, 0x41, 0xCD, 0x83,
                    /* 0AE8 */  0x7A, 0xA5, 0x65, 0xE7, 0x0F, 0x0F, 0x8E, 0x9F,
                    /* 0AF0 */  0x8A, 0x80, 0xE7, 0x45, 0x1E, 0xCE, 0x54, 0xE1,
                    /* 0AF8 */  0x9D, 0x52, 0xFE, 0xFF, 0xAF, 0x45, 0xC0, 0xFF,
                    /* 0B00 */  0x96, 0x05, 0x0C, 0x4F, 0x45, 0x60, 0xBC, 0x65,
                    /* 0B08 */  0xC1, 0xB9, 0x1C, 0xC2, 0x18, 0x3F, 0x78, 0x67,
                    /* 0B10 */  0xE6, 0xCB, 0x11, 0xCC, 0x43, 0x0F, 0xF0, 0xFD,
                    /* 0B18 */  0xFF, 0x1F, 0x7A, 0x00, 0x0B, 0x07, 0x56, 0x70,
                    /* 0B20 */  0x1D, 0x7A, 0x80, 0x4F, 0xEC, 0x43, 0x0F, 0xE8,
                    /* 0B28 */  0x60, 0xF9, 0xA1, 0x07, 0x78, 0xCE, 0xF1, 0xA1,
                    /* 0B30 */  0x07, 0x6C, 0x67, 0x15, 0x76, 0xDD, 0x87, 0x15,
                    /* 0B38 */  0xC0, 0xDB, 0x10, 0x58, 0x98, 0x97, 0x82, 0x24,
                    /* 0B40 */  0xAE, 0x95, 0xFC, 0xFF, 0x61, 0xD8, 0x89, 0xC2,
                    /* 0B48 */  0xC7, 0x03, 0xFC, 0x80, 0x8F, 0xF7, 0x30, 0x8F,
                    /* 0B50 */  0x88, 0x49, 0x82, 0x43, 0x9D, 0x05, 0x3C, 0x87,
                    /* 0B58 */  0xE6, 0x47, 0xA3, 0x81, 0x9C, 0xB8, 0xA7, 0x14,
                    /* 0B60 */  0x92, 0x49, 0x1B, 0x1A, 0xEA, 0xC4, 0xE3, 0x01,
                    /* 0B68 */  0x9D, 0xCD, 0xE9, 0xBC, 0x7B, 0x44, 0x7C, 0x71,
                    /* 0B70 */  0x30, 0x4C, 0x02, 0x9F, 0x02, 0xD8, 0xA5, 0x20,
                    /* 0B78 */  0x1A, 0x83, 0xC6, 0x0E, 0xC3, 0x63, 0x0D, 0x76,
                    /* 0B80 */  0x10, 0x87, 0xF1, 0x0A, 0x60, 0x02, 0x4F, 0xE8,
                    /* 0B88 */  0x2C, 0xCB, 0xBD, 0x36, 0xE8, 0x52, 0x18, 0x35,
                    /* 0B90 */  0x46, 0x73, 0x50, 0x44, 0xFE, 0xA0, 0x41, 0x73,
                    /* 0B98 */  0x64, 0x38, 0x83, 0x13, 0x66, 0x63, 0x7E, 0x7E,
                    /* 0BA0 */  0x78, 0x3E, 0xF1, 0x90, 0xA2, 0xD4, 0x3C, 0x67,
                    /* 0BA8 */  0x72, 0x7B, 0x82, 0x7B, 0x4E, 0x08, 0x55, 0xEB,
                    /* 0BB0 */  0xE4, 0x08, 0xCC, 0x31, 0x30, 0xA0, 0x97, 0x89,
                    /* 0BB8 */  0xF3, 0x7F, 0x19, 0xF1, 0x24, 0x8E, 0x07, 0x73,
                    /* 0BC0 */  0x36, 0x30, 0xF0, 0x5B, 0x85, 0xCF, 0x08, 0xCC,
                    /* 0BC8 */  0xBD, 0x00, 0x8D, 0x02, 0xFE, 0x01, 0xAD, 0x61,
                    /* 0BD0 */  0x08, 0xE2, 0x0D, 0x26, 0x82, 0x6D, 0xCD, 0x44,
                    /* 0BD8 */  0xD8, 0x21, 0x5E, 0x2E, 0xA2, 0x1C, 0xE0, 0x31,
                    /* 0BE0 */  0x05, 0x8B, 0x1A, 0xE5, 0x95, 0xE2, 0x10, 0x1F,
                    /* 0BE8 */  0x65, 0xCE, 0x2B, 0x4A, 0xDC, 0x58, 0x01, 0x23,
                    /* 0BF0 */  0x44, 0x0E, 0x7B, 0x22, 0xAF, 0x15, 0xC1, 0x0D,
                    /* 0BF8 */  0x1B, 0xAB, 0xFD, 0x41, 0x90, 0x58, 0xC7, 0x02,
                    /* 0C00 */  0x1D, 0x3B, 0x1C, 0x69, 0x34, 0xA8, 0x4B, 0x3F,
                    /* 0C08 */  0xBF, 0x5A, 0x7A, 0x5E, 0x8F, 0x85, 0x06, 0x39,
                    /* 0C10 */  0xDD, 0x63, 0xAB, 0xF3, 0x4C, 0x40, 0x46, 0xCF,
                    /* 0C18 */  0xCE, 0x22, 0x3E, 0x92, 0xC0, 0x71, 0x0D, 0xA8,
                    /* 0C20 */  0xDB, 0xC1, 0xD3, 0x04, 0xFE, 0xFF, 0x7F, 0xAA,
                    /* 0C28 */  0x80, 0x75, 0x26, 0x81, 0x3F, 0x1E, 0x1F, 0x06,
                    /* 0C30 */  0x3C, 0x79, 0x9F, 0x0A, 0xF8, 0x20, 0xF8, 0x0D,
                    /* 0C38 */  0x93, 0x0F, 0xF5, 0xB4, 0xDE, 0x02, 0x7C, 0xF8,
                    /* 0C40 */  0x31, 0x81, 0x8F, 0xD6, 0x7C, 0x3C, 0xE0, 0x57,
                    /* 0C48 */  0x7C, 0x2A, 0x10, 0xC2, 0x8B, 0x83, 0xE7, 0x6B,
                    /* 0C50 */  0x82, 0xF2, 0x8E, 0x2C, 0xA0, 0xB8, 0x10, 0xC3,
                    /* 0C58 */  0x3A, 0x76, 0xF9, 0x0C, 0x81, 0x85, 0xE7, 0x87,
                    /* 0C60 */  0x80, 0x87, 0x17, 0x06, 0xFC, 0xFE, 0xE2, 0x29,
                    /* 0C68 */  0x1C, 0x8E, 0x4F, 0x17, 0x46, 0x08, 0xFF, 0x50,
                    /* 0C70 */  0xF1, 0x90, 0xE1, 0x23, 0xC4, 0xF9, 0x3C, 0x2F,
                    /* 0C78 */  0x9C, 0xD1, 0xBB, 0x80, 0x09, 0x8A, 0x7A, 0x62,
                    /* 0C80 */  0xC8, 0x06, 0x88, 0xD2, 0x3E, 0x07, 0x74, 0x96,
                    /* 0C88 */  0xE3, 0xA2, 0x20, 0x94, 0x72, 0xB1, 0xC2, 0x7F,
                    /* 0C90 */  0x7F, 0x09, 0x7C, 0xCC, 0x0F, 0x04, 0x8F, 0x59,
                    /* 0C98 */  0xF8, 0x59, 0x3C, 0x66, 0x9C, 0xD2, 0x33, 0x80,
                    /* 0CA0 */  0x09, 0x9C, 0xE8, 0x18, 0x47, 0x47, 0xEE, 0x2C,
                    /* 0CA8 */  0x14, 0xCA, 0x3D, 0x28, 0x0A, 0xE7, 0xA4, 0xC7,
                    /* 0CB0 */  0x22, 0x0A, 0x62, 0x40, 0xDF, 0x5E, 0x7D, 0x6A,
                    /* 0CB8 */  0xC0, 0x0D, 0x9D, 0xCD, 0xE2, 0x89, 0x21, 0xC2,
                    /* 0CC0 */  0x59, 0xFB, 0x0E, 0xE0, 0xBB, 0x17, 0x58, 0xFE,
                    /* 0CC8 */  0xFF, 0x87, 0x39, 0x70, 0xDE, 0x17, 0xB0, 0x37,
                    /* 0CD0 */  0x2A, 0x60, 0x11, 0xE9, 0x46, 0x85, 0x0A, 0x01,
                    /* 0CD8 */  0xA3, 0xB9, 0x1A, 0xC4, 0x13, 0xF3, 0x8D, 0x0A,
                    /* 0CE0 */  0x78, 0x8E, 0xC6, 0x37, 0x2A, 0xF0, 0xDD, 0x4B,
                    /* 0CE8 */  0x3C, 0x2E, 0xDC, 0x7B, 0xC1, 0x47, 0x05, 0x98,
                    /* 0CF0 */  0xA7, 0x75, 0x8F, 0x0C, 0xEC, 0xF7, 0x05, 0x5F,
                    /* 0CF8 */  0xBD, 0x80, 0xCB, 0xFF, 0xFF, 0xEA, 0x05, 0xAE,
                    /* 0D00 */  0xF8, 0x57, 0x2F, 0xD0, 0x9D, 0x19, 0xF9, 0xD5,
                    /* 0D08 */  0x0B, 0x78, 0x5E, 0x4B, 0x5E, 0x9B, 0xC0, 0x73,
                    /* 0D10 */  0x29, 0xE1, 0x37, 0x2F, 0x18, 0x48, 0x0F, 0xEC,
                    /* 0D18 */  0xBE, 0x1B, 0xB0, 0x81, 0xF9, 0x1E, 0xE4, 0x43,
                    /* 0D20 */  0x87, 0x65, 0x5C, 0x53, 0x50, 0xB7, 0x2B, 0x47,
                    /* 0D28 */  0x5F, 0xA7, 0x3C, 0x4E, 0x96, 0xCC, 0x3E, 0x7A,
                    /* 0D30 */  0xFC, 0x87, 0x27, 0x5F, 0x64, 0x02, 0x3F, 0x2F,
                    /* 0D38 */  0xE0, 0x2F, 0x00, 0x6F, 0x46, 0xBE, 0x5A, 0xF8,
                    /* 0D40 */  0xBC, 0xC0, 0x02, 0x9E, 0x33, 0x28, 0x84, 0xA3,
                    /* 0D48 */  0x51, 0x28, 0xD8, 0x71, 0x03, 0x15, 0x05, 0x8E,
                    /* 0D50 */  0x82, 0xF8, 0xB8, 0x01, 0x3C, 0xFF, 0xFF, 0x04,
                    /* 0D58 */  0xFC, 0x14, 0x01, 0xBE, 0x60, 0xE3, 0x42, 0x1F,
                    /* 0D60 */  0x15, 0x3C, 0x65, 0x70, 0x1D, 0x4D, 0x80, 0xEF,
                    /* 0D68 */  0x89, 0x03, 0x78, 0x48, 0x58, 0x8F, 0x4E, 0x1C,
                    /* 0D70 */  0xE0, 0x3A, 0x9C, 0xF8, 0xC4, 0x01, 0x5C, 0x51,
                    /* 0D78 */  0x7D, 0xE2, 0x00, 0xC7, 0xF9, 0x82, 0xCD, 0xE1,
                    /* 0D80 */  0xFF, 0x1F, 0xEA, 0xE9, 0x80, 0xC3, 0x3C, 0xEB,
                    /* 0D88 */  0xB1, 0x4B, 0x07, 0x8C, 0xAB, 0x1C, 0xBB, 0x1E,
                    /* 0D90 */  0xB0, 0x33, 0x87, 0x13, 0xFD, 0xEA, 0x74, 0xE6,
                    /* 0D98 */  0xC0, 0xA5, 0x58, 0xB2, 0xAE, 0x61, 0xEC, 0xCC,
                    /* 0DA0 */  0x01, 0x36, 0xAD, 0x37, 0x71, 0x94, 0x4A, 0x18,
                    /* 0DA8 */  0x69, 0xBC, 0x89, 0xA3, 0x54, 0xDD, 0xB9, 0x28,
                    /* 0DB0 */  0x88, 0x6F, 0x7C, 0x3E, 0x3A, 0x03, 0xC3, 0xAB,
                    /* 0DB8 */  0x38, 0x18, 0x8F, 0xCE, 0x70, 0x4E, 0xE2, 0x80,
                    /* 0DC0 */  0x93, 0xA1, 0x79, 0xFC, 0xB8, 0xB3, 0x09, 0xEE,
                    /* 0DC8 */  0xFF, 0x7F, 0x35, 0x00, 0xC7, 0x71, 0x1C, 0x78,
                    /* 0DD0 */  0x1E, 0xB2, 0x01, 0x93, 0x50, 0xBE, 0xD8, 0x00,
                    /* 0DD8 */  0x96, 0xFE, 0xFF, 0xB7, 0x79, 0xCC, 0xC5, 0x06,
                    /* 0DE0 */  0xF0, 0x71, 0xC8, 0xE6, 0x17, 0x1B, 0x70, 0xCA,
                    /* 0DE8 */  0xBE, 0xD8, 0xA0, 0x8E, 0x04, 0x16, 0xBB, 0x52,
                    /* 0DF0 */  0x5D, 0x76, 0xD8, 0x95, 0xF5, 0x0D, 0x95, 0xCD,
                    /* 0DF8 */  0xC6, 0xE7, 0x6A, 0x1F, 0xD4, 0x3C, 0xEA, 0xB7,
                    /* 0E00 */  0x05, 0x36, 0xD8, 0x47, 0x60, 0x9C, 0xA8, 0x7B,
                    /* 0E08 */  0x0D, 0x4A, 0x0E, 0x8C, 0x02, 0x1C, 0x23, 0x50,
                    /* 0E10 */  0x92, 0xAF, 0x66, 0x14, 0xC4, 0x07, 0x00, 0x1F,
                    /* 0E18 */  0x4A, 0x01, 0x17, 0x49, 0xEE, 0x2A, 0x68, 0x2D,
                    /* 0E20 */  0x27, 0x01, 0x72, 0xC9, 0xF3, 0x61, 0xEF, 0x40,
                    /* 0E28 */  0x4F, 0xFC, 0xA4, 0x5E, 0x80, 0x1F, 0xCA, 0xD9,
                    /* 0E30 */  0xA4, 0xFC, 0xFF, 0x9F, 0x14, 0x18, 0x87, 0xEB,
                    /* 0E38 */  0x63, 0x0A, 0x70, 0x3E, 0xDA, 0xFB, 0x40, 0xC0,
                    /* 0E40 */  0xE5, 0x1F, 0x08, 0x28, 0x88, 0xAF, 0x7E, 0xC0,
                    /* 0E48 */  0xF5, 0x3E, 0x0A, 0xCE, 0x30, 0xE7, 0x06, 0xF4,
                    /* 0E50 */  0xB9, 0xDF, 0x97, 0x09, 0x38, 0x87, 0x19, 0xE0,
                    /* 0E58 */  0x77, 0x3A, 0xC7, 0x1F, 0x66, 0xD8, 0xFF, 0xFF,
                    /* 0E60 */  0x30, 0x03, 0x0C, 0x9E, 0x04, 0x3E, 0xCC, 0x80,
                    /* 0E68 */  0x0B, 0xDC, 0x87, 0x19, 0xE0, 0x2A, 0xF8, 0xD2,
                    /* 0E70 */  0x07, 0xBA, 0x83, 0x3C, 0x43, 0xF1, 0xC5, 0xC0,
                    /* 0E78 */  0x27, 0x17, 0x8E, 0x73, 0x5A, 0x4F, 0x07, 0x1C,
                    /* 0E80 */  0x26, 0xF0, 0xDB, 0x01, 0x3B, 0x72, 0x58, 0xFC,
                    /* 0E88 */  0x9D, 0x0F, 0x2D, 0xF7, 0x2C, 0x03, 0xF9, 0x96,
                    /* 0E90 */  0xE3, 0xE9, 0x78, 0x00, 0xCF, 0x0B, 0xBE, 0x93,
                    /* 0E98 */  0xE0, 0x0E, 0x33, 0xC0, 0xFA, 0xFF, 0x7F, 0x98,
                    /* 0EA0 */  0x01, 0x58, 0x7E, 0x9B, 0x80, 0x31, 0x2C, 0xFE,
                    /* 0EA8 */  0xFF, 0x3F, 0xCC, 0x00, 0xC6, 0x44, 0x1C, 0x66,
                    /* 0EB0 */  0x40, 0x67, 0xE2, 0x30, 0x03, 0x74, 0x6F, 0x1A,
                    /* 0EB8 */  0x3E, 0xCC, 0x00, 0x07, 0xE8, 0xA7, 0x03, 0xCC,
                    /* 0EC0 */  0x65, 0xC6, 0x57, 0x10, 0xCC, 0x9D, 0xC3, 0x04,
                    /* 0EC8 */  0xE3, 0xBD, 0x1B, 0x74, 0x9C, 0xE1, 0x43, 0xF1,
                    /* 0ED0 */  0x35, 0xDE, 0xA3, 0x60, 0xE3, 0x7F, 0xEF, 0x33,
                    /* 0ED8 */  0x8A, 0x0F, 0x00, 0xF1, 0xDF, 0x07, 0x1C, 0xEA,
                    /* 0EE0 */  0x36, 0x8F, 0x8A, 0x43, 0xA1, 0x73, 0x06, 0xE6,
                    /* 0EE8 */  0xFF, 0x7F, 0xCE, 0x00, 0xE6, 0xB7, 0x79, 0x70,
                    /* 0EF0 */  0x9E, 0x33, 0xE0, 0xCC, 0x15, 0xC6, 0x3D, 0x1E,
                    /* 0EF8 */  0x18, 0x9E, 0x33, 0x80, 0x57, 0x68, 0x08, 0x9D,
                    /* 0F00 */  0x33, 0xC0, 0xA5, 0xE2, 0x9C, 0x01, 0x04, 0xFE,
                    /* 0F08 */  0xFF, 0xE7, 0x0C, 0xB0, 0x89, 0x3C, 0x67, 0x80,
                    /* 0F10 */  0xEE, 0x68, 0xCA, 0x60, 0xD8, 0xC5, 0xD4, 0x73,
                    /* 0F18 */  0x7F, 0xBE, 0x60, 0x42, 0x4F, 0x5F, 0xA8, 0x21,
                    /* 0F20 */  0x58, 0xEA, 0x05, 0x1E, 0x71, 0x47, 0x80, 0x21,
                    /* 0F28 */  0xEF, 0xD8, 0x85, 0x12, 0x06, 0x23, 0x59, 0x37,
                    /* 0F30 */  0x77, 0x94, 0x90, 0x9B, 0x3B, 0x05, 0xF1, 0xCD,
                    /* 0F38 */  0x1D, 0x60, 0xCD, 0xFF, 0xFF, 0xE6, 0x8E, 0xC9,
                    /* 0F40 */  0x71, 0x0E, 0x41, 0x0F, 0xCD, 0x77, 0x02, 0x18,
                    /* 0F48 */  0x67, 0x76, 0x60, 0x76, 0x0A, 0xC1, 0x9E, 0xD9,
                    /* 0F50 */  0x01, 0x16, 0x1D, 0x62, 0xC0, 0xF0, 0xFF, 0x3F,
                    /* 0F58 */  0xC4, 0x60, 0xC7, 0xE9, 0x43, 0x0C, 0xE0, 0xE4,
                    /* 0F60 */  0xCC, 0xCE, 0x0F, 0x31, 0xF0, 0x92, 0xAE, 0x53,
                    /* 0F68 */  0x87, 0x18, 0xCE, 0xE1, 0x9C, 0x0F, 0x05, 0x4D,
                    /* 0F70 */  0x3D, 0xFC, 0x31, 0xF9, 0x46, 0x7A, 0x82, 0x7D,
                    /* 0F78 */  0x4E, 0x40, 0xE3, 0xB0, 0x66, 0x24, 0x9D, 0x05,
                    /* 0F80 */  0x8E, 0xF1, 0xE9, 0xC0, 0xB9, 0xCE, 0x2F, 0xF4,
                    /* 0F88 */  0xCC, 0xE0, 0x44, 0x14, 0xCA, 0x73, 0x76, 0x40,
                    /* 0F90 */  0x25, 0x38, 0x75, 0x51, 0x10, 0x0F, 0xDF, 0xC7,
                    /* 0F98 */  0x18, 0xC0, 0xEC, 0xFF, 0xFF, 0x18, 0x03, 0x0C,
                    /* 0FA0 */  0xAF, 0x28, 0x80, 0xC9, 0x3B, 0x29, 0x38, 0xAF,
                    /* 0FA8 */  0x28, 0xC0, 0x23, 0xF8, 0x15, 0x05, 0x74, 0x36,
                    /* 0FB0 */  0xAE, 0x28, 0xA0, 0xF9, 0xFF, 0x5F, 0x51, 0x80,
                    /* 0FB8 */  0xC7, 0x00, 0x5F, 0x51, 0xC0, 0x72, 0x2B, 0xE1,
                    /* 0FC0 */  0x83, 0x78, 0x2C, 0xE1, 0xC7, 0x4D, 0x76, 0x2D,
                    /* 0FC8 */  0xC1, 0x5C, 0x52, 0x58, 0xE6, 0x4B, 0x0A, 0x4A,
                    /* 0FD0 */  0x14, 0x84, 0xB2, 0x5E, 0x52, 0x50, 0x56, 0xCF,
                    /* 0FD8 */  0x9D, 0xF4, 0x9A, 0x02, 0x70, 0xE8, 0xFF, 0x7F,
                    /* 0FE0 */  0x4D, 0x01, 0x18, 0x18, 0xFF, 0x9A, 0x02, 0x3A,
                    /* 0FE8 */  0x1D, 0xD7, 0x14, 0x20, 0xF3, 0xFF, 0xBF, 0xA6,
                    /* 0FF0 */  0x80, 0x41, 0xEE, 0x35, 0x05, 0x84, 0x53, 0x7F,
                    /* 0FF8 */  0x30, 0x61, 0x9E, 0x40, 0x74, 0x54, 0x81, 0x1D,
                    /* 1000 */  0xFB, 0x84, 0x8D, 0xE2, 0x70, 0xE8, 0x13, 0x36,
                    /* 1008 */  0x02, 0xFB, 0xAD, 0x9B, 0x5D, 0xD7, 0x6C, 0x1C,
                    /* 1010 */  0x59, 0xB3, 0xF4, 0xB1, 0xDB, 0x04, 0x43, 0x9E,
                    /* 1018 */  0xB1, 0x51, 0xF1, 0x28, 0x14, 0xEE, 0x00, 0x81,
                    /* 1020 */  0x3A, 0x67, 0xFB, 0xA4, 0xCD, 0xCF, 0xD8, 0x80,
                    /* 1028 */  0x9F, 0x70, 0x37, 0x15, 0xF4, 0x38, 0x3C, 0x5B,
                    /* 1030 */  0x8E, 0xFC, 0x1E, 0xE0, 0xAB, 0x8A, 0xAF, 0x04,
                    /* 1038 */  0x36, 0x0F, 0x49, 0x42, 0x1C, 0x56, 0xE8, 0xC0,
                    /* 1040 */  0xC0, 0x75, 0x5A, 0xE1, 0x83, 0xF2, 0xF8, 0x60,
                    /* 1048 */  0xFD, 0xFF, 0x6F, 0x2B, 0x60, 0xBC, 0x64, 0x01,
                    /* 1050 */  0xEF, 0xB1, 0xF8, 0x92, 0x05, 0x38, 0x39, 0x6B,
                    /* 1058 */  0x73, 0xC5, 0xE7, 0x03, 0x8A, 0xF2, 0xBE, 0xE1,
                    /* 1060 */  0xD3, 0x05, 0xEE, 0x92, 0xC5, 0x12, 0x9C, 0xB6,
                    /* 1068 */  0x51, 0x1C, 0xD6, 0x7F, 0xDA, 0x46, 0x9C, 0x35,
                    /* 1070 */  0x60, 0xEA, 0x3D, 0x6F, 0xA3, 0x94, 0xC2, 0x48,
                    /* 1078 */  0xE7, 0x79, 0x1B, 0xA5, 0xEC, 0xA6, 0x45, 0x41,
                    /* 1080 */  0x7C, 0xDE, 0x06, 0xF3, 0xFF, 0xFF, 0x8A, 0x05,
                    /* 1088 */  0xB0, 0x20, 0xD8, 0xD0, 0xD0, 0xB3, 0xF0, 0x99,
                    /* 1090 */  0x04, 0xE6, 0xE0, 0xC0, 0x3B, 0x23, 0x1F, 0xBC,
                    /* 1098 */  0x61, 0x5E, 0xC7, 0x80, 0xF5, 0xFF, 0xFF, 0xDE,
                    /* 10A0 */  0x0D, 0xB8, 0xBF, 0xD0, 0x80, 0xCF, 0xC8, 0x85,
                    /* 10A8 */  0x06, 0xD0, 0x72, 0xEF, 0xE6, 0x17, 0x1A, 0xF8,
                    /* 10B0 */  0x81, 0x4F, 0xA1, 0xE8, 0x98, 0x4F, 0x05, 0xFD,
                    /* 10B8 */  0xFF, 0xEF, 0x37, 0x6C, 0x1A, 0xD6, 0x3E, 0x08,
                    /* 10C0 */  0xC1, 0x7A, 0x36, 0xCF, 0x1A, 0xBE, 0xD3, 0xF8,
                    /* 10C8 */  0x22, 0xEE, 0x39, 0x31, 0x82, 0x91, 0x4E, 0xA1,
                    /* 10D0 */  0xA8, 0x30, 0x14, 0x0A, 0x7F, 0x1C, 0xA0, 0x70,
                    /* 10D8 */  0x8E, 0x7B, 0x7E, 0xA0, 0x20, 0x06, 0x74, 0x96,
                    /* 10E0 */  0xF3, 0x03, 0xFA, 0xB4, 0xE1, 0x89, 0xE0, 0xCE,
                    /* 10E8 */  0x04, 0x6F, 0x20, 0x07, 0x18, 0xE4, 0x89, 0x81,
                    /* 10F0 */  0x9D, 0x69, 0x80, 0xE1, 0xF1, 0x81, 0x9D, 0x3E,
                    /* 10F8 */  0x80, 0xC5, 0x35, 0xCE, 0xC3, 0xE5, 0x01, 0xEE,
                    /* 1100 */  0x72, 0x14, 0xC4, 0x77, 0x39, 0xE0, 0x3A, 0x1A,
                    /* 1108 */  0x9F, 0x3E, 0xC0, 0x37, 0x2E, 0x38, 0xA7, 0x02,
                    /* 1110 */  0xFF, 0xFF, 0x4F, 0x05, 0xFC, 0xAE, 0x80, 0xBB,
                    /* 1118 */  0x82, 0x02, 0xDE, 0x96, 0xED, 0x43, 0x0A, 0xB8,
                    /* 1120 */  0xEE, 0x54, 0x3E, 0xA4, 0x00, 0x57, 0xC1, 0x97,
                    /* 1128 */  0x38, 0xD0, 0x9D, 0x1D, 0x7C, 0x30, 0xE0, 0x38,
                    /* 1130 */  0xA7, 0x12, 0xEE, 0x3D, 0xD4, 0xA8, 0x0F, 0x26,
                    /* 1138 */  0xEC, 0xA6, 0xE2, 0xD3, 0x01, 0x3F, 0xA8, 0xB0,
                    /* 1140 */  0x44, 0xEB, 0xD5, 0x41, 0x05, 0x97, 0xE3, 0x65,
                    /* 1148 */  0xA5, 0x73, 0x0B, 0x3B, 0xA8, 0xC0, 0xFC, 0xFF,
                    /* 1150 */  0x1F, 0x54, 0xB8, 0x66, 0x58, 0x1D, 0x54, 0xB8,
                    /* 1158 */  0x5A, 0x18, 0x69, 0x7D, 0x00, 0xE8, 0xA8, 0xC1,
                    /* 1160 */  0xD5, 0xDD, 0xE8, 0x28, 0x88, 0x2F, 0x24, 0xBE,
                    /* 1168 */  0xCA, 0x01, 0xDC, 0xC9, 0x31, 0x7E, 0x34, 0x8C,
                    /* 1170 */  0x4F, 0x2E, 0xBE, 0xFC, 0xB2, 0x93, 0xC1, 0xBB,
                    /* 1178 */  0x04, 0x9B, 0x3D, 0x58, 0xCF, 0x07, 0x9E, 0x3D,
                    /* 1180 */  0xD8, 0xAE, 0x46, 0xFF, 0xFF, 0x57, 0x23, 0x60,
                    /* 1188 */  0x88, 0xE4, 0xAB, 0x11, 0xD8, 0x0E, 0x12, 0x3E,
                    /* 1190 */  0xDB, 0x80, 0x67, 0x54, 0x60, 0x3D, 0x31, 0xF8,
                    /* 1198 */  0xFE, 0x04, 0x9C, 0x2F, 0x83, 0x80, 0x83, 0x8B,
                    /* 11A0 */  0x8F, 0x2F, 0x46, 0x98, 0xFF, 0xFF, 0xC5, 0x08,
                    /* 11A8 */  0xB0, 0x33, 0x68, 0x5F, 0x8C, 0x00, 0x27, 0x97,
                    /* 11B0 */  0x41, 0x7E, 0x31, 0x02, 0x5F, 0x02, 0x1B, 0xE3,
                    /* 11B8 */  0x60, 0x31, 0x86, 0x2C, 0x81, 0x0B, 0xA6, 0x30,
                    /* 11C0 */  0xBE, 0x56, 0xF8, 0x8C, 0x80, 0x1F, 0xF5, 0x41,
                    /* 11C8 */  0x1F, 0xEB, 0x61, 0x31, 0x49, 0x70, 0xA8, 0x03,
                    /* 11D0 */  0x81, 0x87, 0xF5, 0x58, 0x72, 0x2C, 0xA7, 0x71,
                    /* 11D8 */  0xF6, 0x1E, 0x4F, 0x48, 0x26, 0x6D, 0x7C, 0x28,
                    /* 11E0 */  0x29, 0xF7, 0x1D, 0x32, 0xA2, 0x43, 0x3A, 0x2F,
                    /* 11E8 */  0xCF, 0xCC, 0x30, 0x09, 0x7C, 0x14, 0x60, 0x68,
                    /* 11F0 */  0x1C, 0xDA, 0xFF, 0xFF, 0x63, 0x02, 0xF6, 0x8E,
                    /* 11F8 */  0x10, 0xEC, 0x20, 0x0E, 0xE3, 0x3D, 0xC0, 0x04,
                    /* 1200 */  0x9E, 0xD0, 0xA9, 0x96, 0x7B, 0x77, 0x90, 0x78,
                    /* 1208 */  0x54, 0x61, 0x34, 0x77, 0x9E, 0x40, 0x8C, 0x1C,
                    /* 1210 */  0x1C, 0xE7, 0x86, 0x33, 0x78, 0x20, 0x62, 0x43,
                    /* 1218 */  0x7E, 0x88, 0x78, 0xD0, 0xF1, 0xB8, 0x0D, 0x18,
                    /* 1220 */  0x2F, 0xC6, 0xA1, 0x18, 0xB2, 0x67, 0x14, 0x5D,
                    /* 1228 */  0x1C, 0xC2, 0x45, 0x79, 0x52, 0x88, 0x52, 0xEB,
                    /* 1230 */  0xCC, 0x08, 0xE8, 0x01, 0x30, 0xA0, 0xD7, 0x89,
                    /* 1238 */  0xA3, 0x7F, 0xF9, 0xF1, 0x0C, 0x0E, 0x06, 0x73,
                    /* 1240 */  0x3A, 0x30, 0xF6, 0x7B, 0x85, 0x4F, 0x09, 0xCC,
                    /* 1248 */  0xBD, 0x00, 0x6F, 0xB3, 0x12, 0x44, 0x84, 0xB8,
                    /* 1250 */  0xEF, 0x12, 0x27, 0xF3, 0x94, 0xD3, 0xD6, 0xD0,
                    /* 1258 */  0x34, 0xB6, 0xE7, 0xE3, 0x07, 0x9D, 0x28, 0x41,
                    /* 1260 */  0x5E, 0x3A, 0x6B, 0x46, 0x15, 0xCA, 0x21, 0x84,
                    /* 1268 */  0x79, 0xC6, 0x08, 0x18, 0x25, 0x62, 0xB4, 0xA8,
                    /* 1270 */  0x81, 0x6B, 0xC4, 0x26, 0xA0, 0x81, 0x62, 0x45,
                    /* 1278 */  0x38, 0x82, 0xF6, 0x07, 0x41, 0xA2, 0x9D, 0x09,
                    /* 1280 */  0x74, 0x6E, 0x71, 0xA4, 0xD1, 0xA0, 0xCE, 0x1A,
                    /* 1288 */  0x3E, 0x17, 0xF8, 0x4C, 0x70, 0x56, 0x0F, 0x09,
                    /* 1290 */  0xEC, 0x14, 0xCA, 0x74, 0x1E, 0x08, 0xC8, 0xD0,
                    /* 1298 */  0xD9, 0x69, 0xC4, 0x87, 0x12, 0x38, 0xAE, 0x01,
                    /* 12A0 */  0x75, 0x79, 0xF6, 0xB9, 0x02, 0x1C, 0xA7, 0x12,
                    /* 12A8 */  0xF8, 0xE3, 0xF1, 0x49, 0xC0, 0xC3, 0x37, 0x81,
                    /* 12B0 */  0xE5, 0x0F, 0x02, 0x35, 0x32, 0x43, 0xFB, 0x3A,
                    /* 12B8 */  0x72, 0x5A, 0x2F, 0x04, 0x3E, 0x42, 0x99, 0xC0,
                    /* 12C0 */  0xE7, 0x2B, 0x9F, 0x63, 0x3C, 0x1E, 0x98, 0xFF,
                    /* 12C8 */  0xFF, 0xF1, 0x80, 0xE5, 0x1A, 0xCB, 0x6E, 0x0D,
                    /* 12D0 */  0x9E, 0xAF, 0x4F, 0x0B, 0x3E, 0xB4, 0x80, 0xE1,
                    /* 12D8 */  0xA4, 0xC0, 0x2F, 0x0A, 0xEC, 0x30, 0x10, 0xC3,
                    /* 12E0 */  0xF3, 0x62, 0x07, 0x07, 0x26, 0xF2, 0x08, 0x81,
                    /* 12E8 */  0x1E, 0x01, 0x3F, 0x06, 0x3C, 0xC0, 0xB0, 0x11,
                    /* 12F0 */  0xBC, 0xC3, 0x78, 0x12, 0x07, 0xE4, 0xC3, 0x85,
                    /* 12F8 */  0xAF, 0xB9, 0x3E, 0x53, 0x3C, 0x63, 0xF8, 0x94,
                    /* 1300 */  0x70, 0x46, 0xE7, 0x70, 0x4E, 0x6F, 0x03, 0x3E,
                    /* 1308 */  0x22, 0x49, 0xC5, 0x79, 0x80, 0x45, 0xBC, 0xE7,
                    /* 1310 */  0xA2, 0x38, 0x1C, 0x6B, 0xB9, 0x3A, 0x9A, 0xB0,
                    /* 1318 */  0x29, 0x61, 0x6F, 0x6D, 0x1E, 0x44, 0x88, 0xE7,
                    /* 1320 */  0x11, 0x72, 0xCB, 0x45, 0x05, 0xA0, 0xD0, 0x15,
                    /* 1328 */  0xD5, 0x07, 0x23, 0x2E, 0xF9, 0x9E, 0x4A, 0x41,
                    /* 1330 */  0x3C, 0x10, 0x9F, 0xBD, 0x7C, 0x61, 0xF6, 0xA9,
                    /* 1338 */  0x01, 0x37, 0x4B, 0xFC, 0xC9, 0xC1, 0x13, 0xF3,
                    /* 1340 */  0xE1, 0xE3, 0x25, 0x50, 0xD7, 0x3D, 0x10, 0x1F,
                    /* 1348 */  0xE2, 0xC0, 0x15, 0x62, 0x56, 0x68, 0x1D, 0xD7,
                    /* 1350 */  0x15, 0x72, 0x05, 0xF1, 0xA4, 0x7C, 0x51, 0xF0,
                    /* 1358 */  0x90, 0x60, 0xFF, 0xFF, 0x87, 0x04, 0xEF, 0x98,
                    /* 1360 */  0x07, 0xBE, 0x83, 0x17, 0xB0, 0x88, 0x7F, 0x8B,
                    /* 1368 */  0x46, 0x05, 0x9E, 0x11, 0x05, 0xF1, 0x6D, 0x9A,
                    /* 1370 */  0x5C, 0xFF, 0xD0, 0x27, 0x1D, 0x0F, 0xE0, 0x50,
                    /* 1378 */  0x9F, 0x1B, 0x0C, 0xF1, 0xDE, 0x85, 0xB9, 0xDF,
                    /* 1380 */  0x02, 0xCF, 0x0B, 0x20, 0x3B, 0x77, 0x01, 0x13,
                    /* 1388 */  0x09, 0xE7, 0x2E, 0xD0, 0x5D, 0x0C, 0xF8, 0xB9,
                    /* 1390 */  0x0B, 0xEC, 0xFF, 0xFF, 0x73, 0x17, 0x98, 0x50,
                    /* 1398 */  0x7D, 0x5C, 0x02, 0xC7, 0x39, 0x09, 0x0F, 0xF2,
                    /* 13A0 */  0x32, 0xC2, 0x0F, 0x49, 0x61, 0xD8, 0xA9, 0x89,
                    /* 13A8 */  0x5D, 0x99, 0xD8, 0x85, 0xE8, 0xE8, 0xFA, 0x9C,
                    /* 13B0 */  0xB2, 0x0E, 0x5E, 0xEC, 0xD4, 0xE5, 0x13, 0x0A,
                    /* 13B8 */  0x3F, 0x6D, 0x59, 0xD4, 0x09, 0x05, 0x71, 0x15,
                    /* 13C0 */  0x81, 0x3B, 0x7E, 0x1D, 0x51, 0x50, 0xE1, 0x49,
                    /* 13C8 */  0x74, 0xAF, 0x87, 0x7F, 0x44, 0x01, 0x8C, 0x1C,
                    /* 13D0 */  0x40, 0x80, 0xF7, 0xFF, 0xFF, 0x00, 0x02, 0x6C,
                    /* 13D8 */  0xAE, 0xF5, 0xE0, 0x3A, 0x80, 0x00, 0xFF, 0x51,
                    /* 13E0 */  0xFB, 0x00, 0x02, 0xF8, 0x54, 0x74, 0x00, 0x41,
                    /* 13E8 */  0x1D, 0x14, 0xAC, 0xE2, 0x00, 0x82, 0x38, 0x35,
                    /* 13F0 */  0x61, 0xB3, 0x9F, 0xB3, 0x28, 0xDF, 0xFF, 0x3F,
                    /* 13F8 */  0xC1, 0xD4, 0x24, 0x4A, 0x7D, 0x7C, 0x40, 0xE5,
                    /* 1400 */  0x3C, 0x22, 0x50, 0x10, 0x03, 0xFA, 0x22, 0x05,
                    /* 1408 */  0xBC, 0x2E, 0x1E, 0x00, 0x0B, 0xFF, 0xFF, 0x17,
                    /* 1410 */  0x0F, 0xB8, 0x90, 0xBE, 0x78, 0x00, 0x3E, 0x15,
                    /* 1418 */  0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83, 0x32,
                    /* 1420 */  0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52, 0x63,
                    /* 1428 */  0xC6, 0xEA, 0xDE, 0x1D, 0xBD, 0x54, 0x8D, 0xD5,
                    /* 1430 */  0x71, 0x40, 0x68, 0xF0, 0x0F, 0xAB, 0x40, 0x1C,
                    /* 1438 */  0x7E, 0x4D, 0x02, 0xB1, 0x74, 0x13, 0x20, 0x2C,
                    /* 1440 */  0xE4, 0x55, 0x92, 0x06, 0xBD, 0x21, 0x0B, 0xC4,
                    /* 1448 */  0x32, 0xBF, 0x1C, 0x02, 0x71, 0x24, 0x1F, 0x17,
                    /* 1450 */  0x0F, 0x96, 0x0F, 0x44, 0x40, 0x4E, 0xF3, 0x32,
                    /* 1458 */  0x10, 0x90, 0xB3, 0x81, 0x08, 0xC8, 0xA9, 0x5F,
                    /* 1460 */  0x11, 0x02, 0xB2, 0x84, 0x3F, 0xB6, 0x80, 0x1C,
                    /* 1468 */  0x18, 0x44, 0x40, 0x8E, 0x0F, 0x44, 0x83, 0x79,
                    /* 1470 */  0x39, 0x0B, 0xD0, 0xD5, 0x0A, 0xC4, 0x41, 0xCC,
                    /* 1478 */  0x00, 0xB2, 0x54, 0x20, 0x02, 0xB2, 0xA0, 0x07,
                    /* 1480 */  0x88, 0x80, 0xAC, 0x0E, 0x44, 0x40, 0x8E, 0x05,
                    /* 1488 */  0x44, 0x33, 0x02, 0x51, 0x6D, 0x6E, 0x80, 0x98,
                    /* 1490 */  0x50, 0x10, 0x01, 0x39, 0x2F, 0x10, 0x0D, 0x0F,
                    /* 1498 */  0x44, 0xB3, 0xBE, 0x29, 0x04, 0xE4, 0xE4, 0x20,
                    /* 14A0 */  0x02, 0xB2, 0x2E, 0x3F, 0x40, 0x4C, 0x24, 0x88,
                    /* 14A8 */  0xFE, 0xFF, 0x40, 0xCE, 0x07, 0x44, 0xC3, 0x02,
                    /* 14B0 */  0x51, 0x95, 0x4F, 0x03, 0x01, 0x59, 0x32, 0x88,
                    /* 14B8 */  0x80, 0x9C, 0x14, 0x88, 0xC6, 0x06, 0xA2, 0xE2,
                    /* 14C0 */  0x0D, 0x01, 0xB1, 0x24, 0x20, 0x02, 0xB2, 0x70,
                    /* 14C8 */  0x45, 0x40, 0x2C, 0x06, 0x88, 0x80, 0x2C, 0xC1,
                    /* 14D0 */  0x11, 0x10, 0x13, 0x04, 0xA2, 0x81, 0x12, 0x20,
                    /* 14D8 */  0x1A, 0x13, 0x88, 0x06, 0xF1, 0x04, 0xC2, 0x64,
                    /* 14E0 */  0x88, 0x02, 0x61, 0x51, 0x4C, 0x01, 0xB2, 0x5C,
                    /* 14E8 */  0x20, 0x02, 0xB2, 0x26, 0x55, 0x40, 0x4C, 0x20,
                    /* 14F0 */  0x88, 0x8E, 0x31, 0xC4, 0x15, 0x10, 0x93, 0x06,
                    /* 14F8 */  0x22, 0x20, 0x87, 0xFD, 0x22, 0x08, 0xC4, 0x52,
                    /* 1500 */  0x7D, 0x81, 0xB0, 0x80, 0x8F, 0x10, 0x01, 0x3A,
                    /* 1508 */  0x2D, 0x88, 0x80, 0xAC, 0xFA, 0xF9, 0x11, 0x88,
                    /* 1510 */  0x44, 0x00, 0x11, 0x90, 0xA3, 0x03, 0x51, 0x1D,
                    /* 1518 */  0x6F, 0x7C, 0x01, 0x39, 0x37, 0x88, 0x80, 0xAC,
                    /* 1520 */  0xE2, 0xD3, 0xFC, 0x70, 0xC0, 0x40, 0x74, 0x38,
                    /* 1528 */  0x20, 0x40, 0x34, 0xB0, 0x35, 0x20, 0x96, 0x1E,
                    /* 1530 */  0x44, 0x83, 0x23, 0x3F, 0x12, 0x1D, 0x0A, 0x08,
                    /* 1538 */  0x88, 0x80, 0x2C, 0xEA, 0xF9, 0x1C, 0x88, 0x28,
                    /* 1540 */  0x04, 0xD1, 0xA0, 0x08, 0x10, 0x4D, 0x0E, 0x44,
                    /* 1548 */  0x15, 0xFF, 0x6D, 0x04, 0x64, 0xF9, 0x20, 0x02,
                    /* 1550 */  0xB2, 0xDC, 0xE7, 0xB7, 0x80, 0x2C, 0x1E, 0x44,
                    /* 1558 */  0x40, 0x0E, 0xE4, 0x0E, 0x88, 0xA5, 0x03, 0xD1,
                    /* 1560 */  0x61, 0x80, 0xC8, 0x3B, 0x0C, 0x50, 0x10, 0x0D,
                    /* 1568 */  0x88, 0x00, 0xD1, 0xF4, 0x40, 0x34, 0xAD, 0x3D,
                    /* 1570 */  0x20, 0x96, 0x1D, 0x44, 0x40, 0xD6, 0xFD, 0xE5,
                    /* 1578 */  0x11, 0x90, 0x53, 0x80, 0x08, 0xC8, 0x6A, 0xFC,
                    /* 1580 */  0x01, 0x31, 0x6D, 0x20, 0x02, 0x72, 0x4A, 0x20,
                    /* 1588 */  0x9A, 0x19, 0x88, 0x66, 0xFF, 0xB4, 0x04, 0x22,
                    /* 1590 */  0x42, 0xBE, 0x1C, 0x07, 0xC4, 0x40, 0x34, 0x20,
                    /* 1598 */  0x02, 0xA2, 0xFF, 0x3F, 0x90, 0xC5, 0x3D, 0x61,
                    /* 15A0 */  0x02, 0x11, 0xA5, 0x20, 0xBA, 0x02, 0x13, 0x20,
                    /* 15A8 */  0x9A, 0x17, 0x88, 0x6A, 0xFE, 0xDE, 0x08, 0xC8,
                    /* 15B0 */  0x01, 0x40, 0x04, 0x64, 0xBD, 0x2F, 0x1B, 0x01,
                    /* 15B8 */  0x59, 0x3D, 0x88, 0x80, 0x9C, 0xC2, 0x23, 0x10,
                    /* 15C0 */  0x8B, 0x04, 0x22, 0x20, 0xAB, 0xFB, 0x26, 0x0B,
                    /* 15C8 */  0xC8, 0x52, 0x41, 0x04, 0xE4, 0x98, 0x40, 0x34,
                    /* 15D0 */  0x33, 0x10, 0xD5, 0xFE, 0xCB, 0x17, 0x90, 0x83,
                    /* 15D8 */  0x80, 0x68, 0x90, 0x44, 0xE5, 0x20, 0x29, 0x88,
                    /* 15E0 */  0x0E, 0x0C, 0xE4, 0xA1, 0xF2, 0xE8, 0x43, 0xB4,
                    /* 15E8 */  0x7C, 0x99, 0x03, 0x91, 0x24, 0x20, 0x34, 0xFD,
                    /* 15F0 */  0x0F, 0x25, 0x28, 0x91, 0xF2, 0x51, 0x79, 0x4C,
                    /* 15F8 */  0x60, 0x20, 0x1A, 0x26, 0x31, 0x0A, 0xC4, 0xC2,
                    /* 1600 */  0x80, 0x08, 0xC8, 0xD1, 0x80, 0x68, 0xEC, 0xFF,
                    /* 1608 */  0x8E, 0x80, 0x2C, 0xE2, 0xCD, 0xF3, 0xA0, 0xC2,
                    /* 1610 */  0x40, 0x04, 0xE4, 0x70, 0x40, 0x34, 0xFA, 0x67,
                    /* 1618 */  0xFE, 0xB1, 0x81, 0x3D, 0x78, 0x02, 0x91, 0x3C,
                    /* 1620 */  0x20, 0x02, 0x24, 0x40, 0x54, 0xE2, 0xFF, 0x5B,
                    /* 1628 */  0x40, 0xD6, 0x0B, 0x22, 0x20, 0xEB, 0x7B, 0x18,
                    /* 1630 */  0x05, 0x22, 0x6A, 0x41, 0x34, 0x5C, 0xE2, 0x76,
                    /* 1638 */  0xB8, 0x14, 0x44, 0x87, 0x26, 0xF2, 0xAF, 0x7E,
                    /* 1640 */  0x24, 0x60, 0x20, 0x02, 0xB2, 0x16, 0xBB, 0x40,
                    /* 1648 */  0x4C, 0x19, 0x88, 0x80, 0x9C, 0x0B, 0x88, 0xA6,
                    /* 1650 */  0x04, 0xA2, 0xE9, 0x3F, 0x47, 0x07, 0xC9, 0x04,
                    /* 1658 */  0x03, 0xB1, 0x18, 0x20, 0x02, 0x72, 0x26, 0x20,
                    /* 1660 */  0x9A, 0xE1, 0x65, 0x2D, 0x20, 0x27, 0x02, 0x11,
                    /* 1668 */  0x90, 0xF5, 0xFC, 0xC8, 0x1F, 0x59, 0x18, 0x88,
                    /* 1670 */  0x8E, 0x12, 0xE4, 0xF1, 0x23, 0x20, 0xEB, 0x07,
                    /* 1678 */  0xD1, 0x20, 0x08, 0x10, 0xD5, 0xF2, 0x08, 0xD2,
                    /* 1680 */  0xB1, 0x81, 0x3C, 0xDD, 0x75, 0xFC, 0x20, 0x20,
                    /* 1688 */  0x3A, 0x26, 0x10, 0x20, 0x9A, 0x17, 0x88, 0x0A,
                    /* 1690 */  0x7D, 0x2B, 0x15, 0xF0, 0xFF, 0x07, 0xB2, 0x6A,
                    /* 1698 */  0x10, 0x1D, 0x29, 0xC8, 0x43, 0x28, 0x10, 0xD1,
                    /* 16A0 */  0x0C, 0x22, 0x20, 0x2B, 0xFF, 0xDF, 0x3F, 0xA6,
                    /* 16A8 */  0x30, 0x10, 0x0D, 0x94, 0xFC, 0x96, 0x0E, 0x94,
                    /* 16B0 */  0x81, 0x08, 0xC8, 0x52, 0x3E, 0x4C, 0x81, 0x88,
                    /* 16B8 */  0x30, 0x10, 0x1D, 0x7A, 0xC8, 0x5F, 0xE8, 0x00,
                    /* 16C0 */  0x18, 0x88, 0x8E, 0x13, 0x04, 0x88, 0x0A, 0x79,
                    /* 16C8 */  0x7C, 0xE9, 0x38, 0x42, 0x40, 0x74, 0x1C, 0x21,
                    /* 16D0 */  0xC6, 0x8F, 0x34, 0xF4, 0x65, 0x14, 0x88, 0xA8,
                    /* 16D8 */  0x04, 0xD1, 0xD1, 0x87, 0x00, 0x51, 0x0D, 0x2F,
                    /* 16E0 */  0x30, 0x1D, 0x00, 0xC8, 0x0F, 0xFF, 0x40, 0x18,
                    /* 16E8 */  0x88, 0x8E, 0x2A, 0x04, 0x88, 0xA6, 0x05, 0xA2,
                    /* 16F0 */  0xC2, 0x1F, 0x50, 0x8F, 0x0F, 0x0C, 0x44, 0x40,
                    /* 16F8 */  0x16, 0xFD, 0x37, 0xD5, 0x71, 0x85, 0x80, 0x08,
                    /* 1700 */  0xC8, 0x89, 0xD4, 0x03, 0xB1, 0x78, 0x20, 0x3A,
                    /* 1708 */  0x30, 0x10, 0xF7, 0x07, 0x05, 0x0A, 0xA2, 0xE3,
                    /* 1710 */  0x06, 0x91, 0x7F, 0xB4, 0xA0, 0x20, 0x02, 0x72,
                    /* 1718 */  0x00, 0xFD, 0x40, 0x2C, 0x0D, 0x88, 0x80, 0xAC,
                    /* 1720 */  0xCA, 0x3F, 0x10, 0x93, 0x08, 0x22, 0x20, 0x67,
                    /* 1728 */  0x03, 0xA2, 0x41, 0x81, 0xA8, 0xCC, 0x00, 0x83,
                    /* 1730 */  0xA5, 0x20, 0x3A, 0x9E, 0x10, 0x20, 0x9A, 0x1E,
                    /* 1738 */  0x88, 0xA6, 0x2D, 0x70, 0x3C, 0xA1, 0x20, 0x3A,
                    /* 1740 */  0x3C, 0x90, 0x0A, 0x20, 0x4C, 0x43, 0x06, 0x10,
                    /* 1748 */  0xA6, 0xBE, 0x03, 0x20, 0x8B, 0x02, 0x22, 0x20,
                    /* 1750 */  0x2B, 0xF8, 0x0A, 0x0A, 0xC8, 0x72, 0x40, 0x74,
                    /* 1758 */  0x00, 0x20, 0x40, 0x54, 0x49, 0x09, 0x20, 0xA6,
                    /* 1760 */  0xB0, 0x05, 0x10, 0x93, 0x0B, 0xA2, 0xE3, 0x12,
                    /* 1768 */  0x89, 0x71, 0x3C, 0xA1, 0x20, 0x02, 0xB2, 0xE4,
                    /* 1770 */  0x1C, 0x87, 0x06, 0x0A, 0x22, 0x20, 0x8B, 0xED,
                    /* 1778 */  0x01, 0xC4, 0xA4, 0x83, 0x08, 0xC8, 0xFF, 0x7F 
                })
                Method (EVBC, 0, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Index (FEBC, 0x06) = Zero
                    Index (FEBC, 0x07) = Zero
                    Local0 = DerefOf (Index (FEBC, Zero))
                    While (One)
                    {
                        _T_0 = Local0
                        If ((_T_0 == One))
                        {
                            Index (FEBC, 0x04) = Zero
                            Index (FEBC, 0x05) = Zero
                            Local1 = DerefOf (Index (FEBC, One))
                            Local2 = Zero
                            If (((Local1 > Zero) && (Local1 < 0x20)))
                            {
                                Local3 = GCMS (RefOf (Local2))
                                If ((Local3 != Zero))
                                {
                                    Index (FEBC, Zero) = Zero
                                    Index (FEBC, One) = Zero
                                    Index (FEBC, 0x02) = Zero
                                    Index (FEBC, 0x03) = Zero
                                }
                                Else
                                {
                                    Index (FEBC, 0x02) = (Local2 & 0xFF)
                                    Local2 >>= 0x08
                                    Index (FEBC, 0x03) = (Local2 & 0xFF)
                                }
                            }
                            Else
                            {
                                If (((Local1 > 0x80) && (Local1 < 0xA0)))
                                {
                                    Local3 = GOTS (Local1, RefOf (Local2))
                                    If ((Local3 != Zero))
                                    {
                                        Index (FEBC, Zero) = Zero
                                        Index (FEBC, One) = Zero
                                        Index (FEBC, 0x02) = Zero
                                        Index (FEBC, 0x03) = Zero
                                    }
                                    Else
                                    {
                                        Index (FEBC, 0x02) = (Local2 & 0xFF)
                                        Local2 >>= 0x08
                                        Index (FEBC, 0x03) = (Local2 & 0xFF)
                                    }
                                }
                                Else
                                {
                                    If (((Local1 > 0x60) && (Local1 < 0x70)))
                                    {
                                        If ((Local1 == 0x63))
                                        {
                                            Local3 = GDPS (RefOf (Local2))
                                            If (((Local3 == Zero) || (Local3 == 0x04)))
                                            {
                                                Index (FEBC, 0x02) = (Local2 & 0xFF)
                                                Local2 >>= 0x08
                                                Index (FEBC, 0x03) = (Local2 & 0xFF)
                                            }
                                            Else
                                            {
                                                Index (FEBC, Zero) = Zero
                                                Index (FEBC, One) = Zero
                                                Index (FEBC, 0x02) = Zero
                                                Index (FEBC, 0x03) = Zero
                                            }
                                        }
                                    }
                                    Else
                                    {
                                        Index (FEBC, 0x02) = Zero
                                        Index (FEBC, 0x03) = Zero
                                    }
                                }
                            }
                        }
                        Else
                        {
                            If ((_T_0 == 0x02))
                            {
                                Index (FEBC, 0x02) = Zero
                                Index (FEBC, 0x03) = Zero
                                Index (FEBC, 0x04) = Zero
                                Index (FEBC, 0x05) = Zero
                            }
                            Else
                            {
                                If ((_T_0 == 0x03))
                                {
                                    Index (FEBC, 0x02) = Zero
                                    Index (FEBC, 0x03) = Zero
                                    Index (FEBC, 0x04) = Zero
                                    Index (FEBC, 0x05) = Zero
                                }
                                Else
                                {
                                    If ((_T_0 == 0x04))
                                    {
                                        Index (FEBC, 0x03) = Zero
                                        Index (FEBC, 0x04) = Zero
                                        Index (FEBC, 0x05) = Zero
                                        Local1 = Zero
                                        Local2 = GBL1 (RefOf (Local1))
                                        If ((Local2 != Zero))
                                        {
                                            Index (FEBC, Zero) = Zero
                                            Index (FEBC, One) = Zero
                                            Index (FEBC, 0x02) = Zero
                                            Return (FEBC)
                                        }

                                        Index (FEBC, One) = (Local1 & 0xFF)
                                        Local2 = GBL2 (RefOf (Local1))
                                        If ((Local2 != Zero))
                                        {
                                            Index (FEBC, 0x02) = Zero
                                            Return (FEBC)
                                        }

                                        Index (FEBC, 0x02) = (Local1 & 0xFF)
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x05))
                                        {
                                            Local0 = DerefOf (Index (FEBC, One))
                                            If ((Local0 == One))
                                            {
                                                Local1 = Zero
                                                Local2 = GSTY (RefOf (Local1))
                                                If ((Local2 != Zero))
                                                {
                                                    Index (FEBC, Zero) = Zero
                                                    Index (FEBC, One) = Zero
                                                    Index (FEBC, 0x02) = Zero
                                                    Index (FEBC, 0x03) = Zero
                                                    Index (FEBC, 0x04) = Zero
                                                    Index (FEBC, 0x05) = Zero
                                                    Return (FEBC)
                                                }
                                                Else
                                                {
                                                    Index (FEBC, One) = (Local1 & 0xFF)
                                                }

                                                Local4 = Zero
                                                Local5 = GSDA (RefOf (Local4))
                                                If ((Local5 != Zero))
                                                {
                                                    Index (FEBC, Zero) = Zero
                                                    Index (FEBC, One) = Zero
                                                    Index (FEBC, 0x02) = Zero
                                                    Index (FEBC, 0x03) = Zero
                                                    Index (FEBC, 0x04) = Zero
                                                    Index (FEBC, 0x05) = Zero
                                                }
                                                Else
                                                {
                                                    Index (FEBC, 0x02) = (Local4 & 0xFF)
                                                    Local4 >>= 0x08
                                                    Index (FEBC, 0x03) = (Local4 & 0xFF)
                                                    Local4 >>= 0x08
                                                    Index (FEBC, 0x04) = (Local4 & 0xFF)
                                                    Local4 >>= 0x08
                                                    Index (FEBC, 0x05) = (Local4 & 0xFF)
                                                }
                                            }
                                            Else
                                            {
                                                If ((Local0 == 0x08))
                                                {
                                                    If (^^LPCB.EC0.LIDT)
                                                    {
                                                        Index (FEBC, 0x02) = Zero
                                                    }
                                                    Else
                                                    {
                                                        Index (FEBC, 0x02) = One
                                                    }

                                                    Index (FEBC, 0x03) = Zero
                                                    Index (FEBC, 0x04) = Zero
                                                    Index (FEBC, 0x05) = Zero
                                                }
                                            }
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x06))
                                            {
                                                Local1 = Zero
                                                Local2 = GTET (RefOf (Local1))
                                                If ((Local2 != Zero))
                                                {
                                                    Index (FEBC, Zero) = Zero
                                                    Index (FEBC, One) = Zero
                                                    Index (FEBC, 0x02) = Zero
                                                    Index (FEBC, 0x03) = Zero
                                                    Index (FEBC, 0x04) = Zero
                                                    Index (FEBC, 0x05) = Zero
                                                }
                                                Else
                                                {
                                                    If ((Local1 == Zero))
                                                    {
                                                        Local3 = Zero
                                                        Local4 = GETS (RefOf (Local3))
                                                        If ((Local4 != Zero))
                                                        {
                                                            Index (FEBC, Zero) = Zero
                                                            Index (FEBC, One) = Zero
                                                            Index (FEBC, 0x02) = Zero
                                                            Index (FEBC, 0x03) = Zero
                                                            Index (FEBC, 0x04) = Zero
                                                            Index (FEBC, 0x05) = Zero
                                                        }
                                                        Else
                                                        {
                                                            Index (FEBC, 0x02) = Local3
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        Index (FEBC, Zero) = Zero
                                                        Index (FEBC, One) = Zero
                                                        Index (FEBC, 0x02) = Zero
                                                        Index (FEBC, 0x03) = Zero
                                                        Index (FEBC, 0x04) = Zero
                                                        Index (FEBC, 0x05) = Zero
                                                    }
                                                }
                                            }
                                            Else
                                            {
                                                Index (FEBC, Zero) = Zero
                                                Index (FEBC, One) = Zero
                                                Index (FEBC, 0x02) = Zero
                                                Index (FEBC, 0x03) = Zero
                                                Index (FEBC, 0x04) = Zero
                                                Index (FEBC, 0x05) = Zero
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }

                    Return (FEBC)
                }

                Method (EVBD, 0, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Index (FEBC, 0x02) = Zero
                    Index (FEBC, 0x03) = Zero
                    Index (FEBC, 0x04) = Zero
                    Index (FEBC, 0x05) = Zero
                    Index (FEBC, 0x06) = Zero
                    Index (FEBC, 0x07) = Zero
                    Local0 = DerefOf (Index (FEBC, Zero))
                    While (One)
                    {
                        _T_0 = Local0
                        If ((_T_0 == One)) {}
                        Else
                        {
                            Index (FEBC, Zero) = Zero
                            Index (FEBC, One) = 0xE1
                        }

                        Break
                    }

                    Return (FEBC)
                }

                Method (WMAB, 3, NotSerialized)
                {
                    CTID = "AB"
                    If ((Arg1 == One))
                    {
                        Local0 = WSMI (Arg1, Arg2)
                        If ((Local0 != Zero))
                        {
                            Return (0xEF)
                        }
                        Else
                        {
                            ABST = WMIB
                            Return (ABST)
                        }
                    }
                    Else
                    {
                        If ((Arg1 == 0x02))
                        {
                            Local0 = WSMI (Arg1, Arg2)
                            If ((Local0 != Zero))
                            {
                                Return (0xEF)
                            }
                            Else
                            {
                                ABGT = WMIB
                                Return (ABGT)
                            }
                        }
                        Else
                        {
                            Return (0xE1)
                        }
                    }
                }

                Method (WMAA, 3, NotSerialized)
                {
                    CTID = "AA"
                    If ((Arg1 == One))
                    {
                        Local0 = WSMI (Arg1, Arg2)
                        If ((Local0 != Zero))
                        {
                            Return (0xEF)
                        }
                        Else
                        {
                            If ((Arg1 == One))
                            {
                                Local1 = DerefOf (Index (Arg2, Zero))
                                Local2 = DerefOf (Index (Arg2, One))
                                If ((Local1 == 0x05))
                                {
                                    If ((Local2 == 0x02))
                                    {
                                        Notify (LID, 0x80)
                                    }
                                }
                            }

                            AAST = WMIB
                            Return (AAST)
                        }
                    }
                    Else
                    {
                        If ((Arg1 == 0x02))
                        {
                            Local0 = WSMI (Arg1, Arg2)
                            If ((Local0 != Zero))
                            {
                                Return (0xEF)
                            }
                            Else
                            {
                                AAGT = WMIB
                                Return (AAGT)
                            }
                        }
                        Else
                        {
                            Return (0xE1)
                        }
                    }
                }

                Method (WMBE, 3, NotSerialized)
                {
                    CTID = "BE"
                    Local0 = WSMI (Arg1, Arg2)
                    If ((Local0 != Zero))
                    {
                        Return (0xEF)
                    }
                    Else
                    {
                        BEBI = WMIB
                        Return (BEBI)
                    }
                }

                Method (WMBF, 3, NotSerialized)
                {
                    Return (0xFF)
                }

                Method (WMBK, 3, NotSerialized)
                {
                    CTID = "BK"
                    If ((Arg1 == One))
                    {
                        Local0 = WSMI (Arg1, Arg2)
                        If ((Local0 != Zero))
                        {
                            Return (0xEF)
                        }
                        Else
                        {
                            BKCP = WMIB
                            Return (BKCP)
                        }
                    }
                    Else
                    {
                        If ((Arg1 == 0x10))
                        {
                            Local0 = WSMI (Arg1, Arg2)
                            If ((Local0 != Zero))
                            {
                                Return (0xEF)
                            }
                            Else
                            {
                                BKGB = WMIB
                                Return (BKGB)
                            }
                        }
                        Else
                        {
                            If ((Arg1 == 0x11))
                            {
                                Local0 = WSMI (Arg1, Arg2)
                                If ((Local0 != Zero))
                                {
                                    Return (0xEF)
                                }
                                Else
                                {
                                    BKSB = WMIB
                                    Return (BKSB)
                                }
                            }
                            Else
                            {
                                If ((Arg1 == 0x02))
                                {
                                    Local0 = WSMI (Arg1, Arg2)
                                    If ((Local0 != Zero))
                                    {
                                        Return (0xEF)
                                    }
                                    Else
                                    {
                                        BKCP = WMIB
                                        Return (BKCP)
                                    }
                                }
                                Else
                                {
                                    If ((Arg1 == 0x03))
                                    {
                                        Local0 = WSMI (Arg1, Arg2)
                                        If ((Local0 != Zero))
                                        {
                                            Return (0xEF)
                                        }
                                        Else
                                        {
                                            BKCP = WMIB
                                            Return (BKCP)
                                        }
                                    }
                                    Else
                                    {
                                        If ((Arg1 == 0x08))
                                        {
                                            Local0 = WSMI (Arg1, Arg2)
                                            If ((Local0 != Zero))
                                            {
                                                Return (0xEF)
                                            }
                                            Else
                                            {
                                                BKMN = WMIB
                                                Return (BKMN)
                                            }
                                        }
                                        Else
                                        {
                                            If ((Arg1 == 0x09))
                                            {
                                                Local0 = WSMI (Arg1, Arg2)
                                                If ((Local0 != Zero))
                                                {
                                                    Return (0xEF)
                                                }
                                                Else
                                                {
                                                    BKSN = WMIB
                                                    Return (BKSN)
                                                }
                                            }
                                            Else
                                            {
                                                If ((Arg1 == 0x0A))
                                                {
                                                    Local0 = WSMI (Arg1, Arg2)
                                                    If ((Local0 != Zero))
                                                    {
                                                        Return (0xEF)
                                                    }
                                                    Else
                                                    {
                                                        BKAT = WMIB
                                                        Return (BKAT)
                                                    }
                                                }
                                                Else
                                                {
                                                    If ((Arg1 == 0x0B))
                                                    {
                                                        Local0 = WSMI (Arg1, Arg2)
                                                        If ((Local0 != Zero))
                                                        {
                                                            Return (0xEF)
                                                        }
                                                        Else
                                                        {
                                                            BKSB = WMIB
                                                            Return (BKSB)
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        If ((Arg1 == 0x0D))
                                                        {
                                                            Local0 = WSMI (Arg1, Arg2)
                                                            If ((Local0 != Zero))
                                                            {
                                                                Return (0xEF)
                                                            }
                                                            Else
                                                            {
                                                                BKSB = WMIB
                                                                Return (BKSB)
                                                            }
                                                        }
                                                        Else
                                                        {
                                                            If ((Arg1 == 0x0E))
                                                            {
                                                                Local0 = WSMI (Arg1, Arg2)
                                                                If ((Local0 != Zero))
                                                                {
                                                                    Return (0xEF)
                                                                }
                                                                Else
                                                                {
                                                                    BKSB = WMIB
                                                                    Return (BKSB)
                                                                }
                                                            }
                                                            Else
                                                            {
                                                                If ((Arg1 == 0x13))
                                                                {
                                                                    Local0 = WSMI (Arg1, Arg2)
                                                                    If ((Local0 != Zero))
                                                                    {
                                                                        Return (0xEF)
                                                                    }
                                                                    Else
                                                                    {
                                                                        BKCP = WMIB
                                                                        Return (BKCP)
                                                                    }
                                                                }
                                                                Else
                                                                {
                                                                    Return (One)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Method (WMBL, 3, NotSerialized)
                {
                    CTID = "BL"
                    If ((Arg1 == One))
                    {
                        Local0 = WSMI (Arg1, Arg2)
                        If ((Local0 != Zero))
                        {
                            Return (0xEF)
                        }
                        Else
                        {
                            BLCP = WMIB
                            Return (BLCP)
                        }
                    }
                    Else
                    {
                        If ((Arg1 == 0x02))
                        {
                            Local0 = WSMI (Arg1, Arg2)
                            If ((Local0 != Zero))
                            {
                                Return (0xEF)
                            }
                            Else
                            {
                                BLSP = WMIB
                                Return (BLSP)
                            }
                        }
                        Else
                        {
                            If ((Arg1 == 0x03))
                            {
                                Local0 = WSMI (Arg1, Arg2)
                                If ((Local0 != Zero))
                                {
                                    Return (0xEF)
                                }
                                Else
                                {
                                    BLGB = WMIB
                                    Return (BLGB)
                                }
                            }
                            Else
                            {
                                If ((Arg1 == 0x04))
                                {
                                    Local0 = WSMI (Arg1, Arg2)
                                    If ((Local0 != Zero))
                                    {
                                        Return (0xEF)
                                    }
                                    Else
                                    {
                                        BLSP = WMIB
                                        Return (BLSP)
                                    }
                                }
                                Else
                                {
                                    If ((Arg1 == 0x05))
                                    {
                                        Local0 = WSMI (Arg1, Arg2)
                                        If ((Local0 != Zero))
                                        {
                                            Return (0xEF)
                                        }
                                        Else
                                        {
                                            BLSP = WMIB
                                            Return (BLSP)
                                        }
                                    }
                                    Else
                                    {
                                        Return (One)
                                    }
                                }
                            }
                        }
                    }
                }

                Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
                {
                    If ((Arg0 == 0xBC))
                    {
                        Return (EVBC ())
                    }
                    Else
                    {
                        If ((Arg0 == 0xBD))
                        {
                            If (AWMI ())
                            {
                                Return (EVBD ())
                            }
                        }
                    }

                    Index (FEBC, Zero) = Zero
                    Index (FEBC, One) = Zero
                    Index (FEBC, 0x02) = Zero
                    Index (FEBC, 0x03) = Zero
                    Index (FEBC, 0x04) = Zero
                    Index (FEBC, 0x05) = Zero
                    Index (FEBC, 0x06) = Zero
                    Index (FEBC, 0x07) = Zero
                    Return (FEBC)
                }
            }
        }
    }

    Name (ECUP, One)
    Mutex (MUTX, 0x00)
    Mutex (OSUM, 0x00)
    Mutex (WFDM, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 3, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        If ((Arg0 == 0x04))
        {
            P80D = ((P80D & Zero) | Arg1)
        }

        If ((Arg2 == Zero)) {}
        If ((Arg2 == One))
        {
            P80H = P80D
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8, 
        SSDP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }
    
  OperationRegion (PMRS, SystemIO, 0x1830, One)
  Field (PMRS, ByteAcc, NoLock, Preserve)
  {
    , 4,
    SLPE, 1
  }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        \_SB.PCI0.RP05.PEGP._ON ()
        P80D = Zero
        P8XH (Zero, Arg0, Zero)
        SLPS = Arg0
        GO55 = Zero
        If ((ICNF & 0x10))
        {
            If (CondRefOf (\_SB.IAOE.PTSL))
            {
                \_SB.IAOE.PTSL = Arg0
            }
        }

        If ((Arg0 == 0x03))
        {
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            If ((DTSE && (TCNT > One)))
            {
                TRAP (TRTD, 0x1E)
            }

            If ((ICNF & One))
            {
                If (((ICNF & 0x10) && (\_SB.IAOE.ITMR == Zero)))
                {
                    If ((CondRefOf (\_SB.PCI0.LPCB.EC0.AWT0) && CondRefOf (\_SB.IAOE.ECTM)))
                    {
                        If ((\_SB.IAOE.ECTM > Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.ECWT ((\_SB.IAOE.ECTM & 0xFF), RefOf (\_SB.PCI0.LPCB.EC0.AWT0))
                            \_SB.PCI0.LPCB.EC0.ECWT (((\_SB.IAOE.ECTM & 0xFF00) >> 0x08), RefOf (\_SB.PCI0.LPCB.EC0.AWT1))
                            \_SB.PCI0.LPCB.EC0.ECWT (((\_SB.IAOE.ECTM & 0x00FF0000) >> 0x10), RefOf (\_SB.PCI0.LPCB.EC0.AWT2))
                            Local0 = \_SB.PCI0.LPCB.EC0.ECRD (RefOf (\_SB.PCI0.LPCB.EC0.WTMS))
                            \_SB.PCI0.LPCB.EC0.ECWT ((0x81 | Local0), RefOf (\_SB.PCI0.LPCB.EC0.WTMS))
                        }
                    }
                }

                If (((ICNF & 0x10) && CondRefOf (\_SB.IFFS.FFSS)))
                {
                    If ((\_SB.IFFS.FFSS & One))
                    {
                        \_SB.IAOE.FFSE = One
                        If ((CondRefOf (\_SB.PCI0.LPCB.EC0.WTMS) && (\_SB.IAOE.PTSL == 0x03)))
                        {
                            Local0 = \_SB.PCI0.LPCB.EC0.ECRD (RefOf (\_SB.PCI0.LPCB.EC0.WTMS))
                            \_SB.PCI0.LPCB.EC0.ECWT ((0x02 | Local0), RefOf (\_SB.PCI0.LPCB.EC0.WTMS))
                        }
                    }
                    Else
                    {
                        \_SB.IAOE.FFSE = Zero
                    }
                }
            }

            \_SB.PCI0.LPCB.EC0.FLS3 = One
            If (((\_SB.PCI0.LPCB.EC0.IBT1 & 0x02) && (GI70 == Zero)))
            {
                DPS3 = Zero
            }
            Else
            {
                DPS3 = One
            }
        }

        If ((Arg0 == 0x04))
        {
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
            \_SB.PCI0.LPCB.EC0.FLS4 = One
            If (((\_SB.PCI0.LPCB.EC0.IBT1 & 0x04) && (GI70 == One)))
            {
                \_SB.PCI0.LPCB.EC0.WLPH = One
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.WLPH = Zero
            }
        }

        \_SB.PTWL = \_SB.PCI0.LPCB.EC0.WLAN
        \_SB.PTBT = \_SB.PCI0.LPCB.EC0.BLTH
        \_SB.PT3G = \_SB.PCI0.LPCB.EC0.ST3G
        \_SB.RDWL = \_SB.PCI0.LPCB.EC0.WLST
        \_SB.RDBT = \_SB.PCI0.LPCB.EC0.BLTS
        \_SB.RD3G = \_SB.PCI0.LPCB.EC0.ED3G
        If ((Arg0 == 0x05))
        {
            P8XH (0x04, 0x55, Zero)
            P8XH (0x04, 0x55, One)
                              //added to fix shutdown
      Store (Zero, SLPE)
      Sleep (0x10)
        }
        
        

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((CondRefOf (\_SB.PCI0.LPCB.EC0.PB10) && ECON))
            {
                If (\_SB.PCI0.LPCB.EC0.ECRD (RefOf (\_SB.PCI0.LPCB.EC0.PB10)))
                {
                    PB1E |= 0x80
                }
                Else
                {
                    PB1E &= 0x7F
                }
            }
        }
    }

    Method (MMRP, 0, NotSerialized)
    {
        Local0 = PEBS
        Local0 += 0x000E0000
        Local1 = (ToInteger (TBSE) - One)
        Local1 *= 0x1000
        Local0 += Local1
        Return (Local0)
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P80D = Zero
        If (\_SB.PCI0.LPCB.EC0.LIDT)
        {
            GO55 = Zero
        }
        Else
        {
            GO55 = One
        }

        \_SB.PCI0.LPCB.EC0.ILID ()
        If ((OSYS >= 0x07DC))
        {
            \_SB.PCI0.LPCB.EC0.OSW8 = One
        }
        Else
        {
            \_SB.PCI0.LPCB.EC0.OSW8 = Zero
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP.EPON))
            {
                \_SB.PCI0.PEG0.PEGP.EPON ()
            }

            If (CondRefOf (\_SB.PCI0.RP05.PEGP.EPON))
            {
                \_SB.PCI0.RP05.PEGP.EPON ()
            }
        }

        If ((((\_SB.PCI0.B0D3.ABAR & 0xFFFFC004) != 0xFFFFC004) && ((
            \_SB.PCI0.B0D3.ABAR & 0xFFFFC000) != Zero)))
        {
            \_SB.PCI0.B0D3.BARA = \_SB.PCI0.B0D3.ABAR
        }

        If ((\_SB.WFVD == One))
        {
            If ((ICNF & 0x10))
            {
                If ((\_SB.PCI0.GFX0.TCHE & 0x0100))
                {
                    If ((\_SB.IAOE.ITMR == One))
                    {
                        If (((\_SB.IAOE.IBT1 & One) && ((\_SB.IAOE.WKRS & 0x02) || (
                            \_SB.IAOE.WKRS & 0x10))))
                        {
                            \_SB.PCI0.GFX0.STAT = ((\_SB.PCI0.GFX0.STAT & 0xFFFFFFFC) | One)
                        }
                        Else
                        {
                            \_SB.PCI0.GFX0.STAT = (\_SB.PCI0.GFX0.STAT & 0xFFFFFFFC)
                        }
                    }
                    Else
                    {
                        If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                        {
                            If (((\_SB.PCI0.LPCB.EC0.ECRD (RefOf (\_SB.PCI0.LPCB.EC0.IBT1)) & One) && ((\_SB.IAOE.WKRS & 0x02
                                ) || (\_SB.IAOE.WKRS & 0x10))))
                            {
                                \_SB.PCI0.GFX0.STAT = ((\_SB.PCI0.GFX0.STAT & 0xFFFFFFFC) | One)
                            }
                            Else
                            {
                                \_SB.PCI0.GFX0.STAT = (\_SB.PCI0.GFX0.STAT & 0xFFFFFFFC)
                            }
                        }
                    }
                }

                If (CondRefOf (\_SB.IAOE.PTSL))
                {
                    \_SB.IAOE.PTSL = Zero
                }

                If ((\_SB.IAOE.ITMR == Zero))
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.WTMS))
                    {
                        \_SB.PCI0.LPCB.EC0.ECWT (Zero, RefOf (\_SB.PCI0.LPCB.EC0.WTMS))
                    }
                }

                If (CondRefOf (\_SB.IAOE.ECTM))
                {
                    \_SB.IAOE.ECTM = Zero
                }

                If (CondRefOf (\_SB.IAOE.RCTM))
                {
                    \_SB.IAOE.RCTM = Zero
                }
            }
        }

        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If ((Arg0 == 0x03))
        {
            P8XH (0x04, 0xE3, Zero)
            P8XH (0x04, 0xE3, One)
            SSMP = 0x70
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.U3DE = Zero
            If ((CondRefOf (\_SB.PCI0.LPCB.EC0.PB10) && ECON))
            {
                If ((PB1E & 0x80))
                {
                    \_SB.PCI0.LPCB.EC0.ECWT (One, RefOf (\_SB.PCI0.LPCB.EC0.PB10))
                }
            }

            If ((GBSX & 0x40))
            {
                \_SB.PCI0.GFX0.IUEH (0x06)
            }

            If ((GBSX & 0x80))
            {
                \_SB.PCI0.GFX0.IUEH (0x07)
            }

            If ((DTSE && (TCNT > One)))
            {
                TRAP (TRTD, 0x14)
            }

            If ((OSYS == 0x07D2))
            {
                If ((\_PR.CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }

            If (((BID == BICO) || (BID == BICC)))
            {
                Acquire (OSUM, 0xFFFF)
                Local0 = MMRP ()
                OperationRegion (RP_X, SystemMemory, Local0, 0x20)
                Field (RP_X, DWordAcc, NoLock, Preserve)
                {
                    REG0,   32, 
                    REG1,   32, 
                    REG2,   32, 
                    REG3,   32, 
                    REG4,   32, 
                    REG5,   32, 
                    REG6,   32, 
                    REG7,   32
                }

                Local1 = REG6
                REG6 = 0x00F0F000
                
                \_GPE.OSUP (\_GPE.MMTB())
                Local1 = REG6
                
                Release (OSUM)
            }

            If ((RP1D == Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If ((RP2D == Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }

            If ((RP3D == Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }

            If ((RP4D == Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }

            If ((RP5D == Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero)
            }

            If ((RP6D == Zero))
            {
                Notify (\_SB.PCI0.RP06, Zero)
            }

            If ((RP7D == Zero))
            {
                If ((DSTS == Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero)
                }
            }

            If ((RP8D == Zero))
            {
                If ((DSTS == Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero)
                }
            }

            If ((\_SB.IOAC && ((\_SB.IWLN == One) || (\_SB.IWWL == One)))) {}
            Else
            {
                If (((\_SB.PCI0.LPCB.EC0.ECPF == 0x30) || (\_SB.PCI0.LPCB.EC0.ECPF == 0x31))) {}
                Else
                {
                    Notify (\_SB.PWRB, 0x02)
                }
            }

            \_SB.PCI0.LPCB.EC0.SCTB ()
        }

        \_SB.PCI0.LPCB.EC0.WLAN = \_SB.PTWL
        \_SB.PCI0.LPCB.EC0.BLTH = \_SB.PTBT
        \_SB.PCI0.LPCB.EC0.ST3G = \_SB.PT3G
        Sleep (0x0A)
        \_SB.PCI0.LPCB.EC0.WLST = \_SB.RDWL
        \_SB.PCI0.LPCB.EC0.BLTS = \_SB.RDBT
        \_SB.PCI0.LPCB.EC0.ED3G = \_SB.RD3G
        \_SB.PCI0.LPCB.EC0.CPLE = One
        If ((Arg0 == 0x04))
        {
            P8XH (0x04, 0xE4, Zero)
            P8XH (0x04, 0xE4, One)
        }

        If ((Arg0 == 0x05))
        {
            P8XH (0x04, 0xE5, Zero)
            P8XH (0x04, 0xE5, One)
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.PCI0.XHC.XWAK ()
        }

        If (((BID == BICO) || (BID == BICC)))
        {
            Acquire (WFDM, 0xFFFF)
            WKFN = One
            Release (WFDM)
            ADBG (Concatenate ("_WAK=", ToHexString (Timer)))
        }
        
        \_SB.PCI0.RP05.PEGP._OFF ()
        
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Local0 = (Arg0 * 0x08)
        Local1 = (Arg1 * 0x08)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If (CondRefOf (\_SB.PCCD.PENB))
        {
            Local0 = 0x82
        }
        Else
        {
            Local0 = 0x80
        }

        If ((TCNT > One))
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, Local0)
                If ((PDC0 & 0x10))
                {
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, Local0)
                If ((PDC1 & 0x10))
                {
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, Local0)
                If ((PDC2 & 0x10))
                {
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, Local0)
                If ((PDC3 & 0x10))
                {
                    Notify (\_PR.CPU3, 0x81)
                }
            }

            If ((PDC4 & 0x08))
            {
                Notify (\_PR.CPU4, Local0)
                If ((PDC4 & 0x10))
                {
                    Notify (\_PR.CPU4, 0x81)
                }
            }

            If ((PDC5 & 0x08))
            {
                Notify (\_PR.CPU5, Local0)
                If ((PDC5 & 0x10))
                {
                    Notify (\_PR.CPU5, 0x81)
                }
            }

            If ((PDC6 & 0x08))
            {
                Notify (\_PR.CPU6, Local0)
                If ((PDC6 & 0x10))
                {
                    Notify (\_PR.CPU6, 0x81)
                }
            }

            If ((PDC7 & 0x08))
            {
                Notify (\_PR.CPU7, Local0)
                If ((PDC7 & 0x10))
                {
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, Local0)
            Notify (\_PR.CPU0, 0x81)
        }
    }

    OperationRegion (MBAR, SystemMemory, ((\_SB.PCI0.MHBR << 0x0F) + 0x5000), 0x1000)
    Field (MBAR, ByteAcc, NoLock, Preserve)
    {
        Offset (0x938), 
        PWRU,   4, 
        Offset (0x9A0), 
        PPL1,   15, 
        PL1E,   1, 
        CLP1,   1
    }

    Name (CLMP, Zero)
    Name (PLEN, Zero)
    Name (PLSV, 0x8000)
    Name (CSEM, Zero)
    Method (SPL1, 0, Serialized)
    {
        Name (PPUU, Zero)
        If ((CSEM == One))
        {
            Return (Zero)
        }

        CSEM = One
        PLSV = PPL1
        PLEN = PL1E
        CLMP = CLP1
        If ((PWRU == Zero))
        {
            PPUU = One
        }
        Else
        {
            PPUU = (PWRU-- << 0x02)
        }

        Local0 = (PLVL * PPUU)
        Local1 = (Local0 / 0x03E8)
        PPL1 = Local1
        PL1E = One
        CLP1 = One
    }

    Method (RPL1, 0, Serialized)
    {
        PPL1 = PLSV
        PL1E = PLEN
        CLP1 = CLMP
        CSEM = Zero
    }

    Name (DDPS, Zero)
    Name (UAMS, Zero)
    Method (GUAM, 1, Serialized)
    {
        If ((Arg0 != DDPS))
        {
            DDPS = Arg0
            UAMS = (Arg0 && ~PWRS)
            If (Arg0)
            {
                If ((ECNO == One))
                {
                    ADBG ("EC Notify")
                    If ((ECDB == One))
                    {
                        ADBG ("EC Debug")
                    }

                    If ((ECLP == One))
                    {
                        ECUP = Zero
                    }
                }

                P8XH (Zero, 0xC5, Zero)
                P8XH (One, Zero, Zero)
                ADBG ("Enter CS")
                If (PSCP)
                {
                    If ((CondRefOf (\_PR.CPU0._PSS) && CondRefOf (\_PR.CPU0._PPC)))
                    {
                        \_PR.CPU0._PPC = (SizeOf (\_PR.CPU0._PSS) - One)
                        PNOT ()
                    }
                }

                If (PLCS)
                {
                    SPL1 ()
                }
            }
            Else
            {
                If ((ECNO == One))
                {
                    ADBG ("EC Notify")
                    If ((ECLP == One))
                    {
                        ECUP = One
                    }

                    ADBG ("EC Debug")
                }

                P8XH (Zero, 0xC5, Zero)
                P8XH (One, 0xAB, Zero)
                ADBG ("Exit CS")
                If (PSCP)
                {
                    If (CondRefOf (\_PR.CPU0._PPC))
                    {
                        \_PR.CPU0._PPC = Zero
                        PNOT ()
                    }
                }

                If (PLCS)
                {
                    RPL1 ()
                }
            }

            P_CS ()
        }
    }

    Method (P_CS, 0, Serialized)
    {
        If (CondRefOf (\_SB.PCI0.PAUD.PUAM))
        {
            \_SB.PCI0.PAUD.PUAM ()
        }

        If ((OSYS == 0x07DC))
        {
            If (CondRefOf (\_SB.PCI0.XHC.DUAM))
            {
                \_SB.PCI0.XHC.DUAM ()
            }
        }
    }

    Method (TRAP, 2, Serialized)
    {
        SMIF = Arg1
        If ((Arg0 == TRTD))
        {
            DTSF = Arg1
            TRPD = Zero
            Return (DTSF)
        }

        If ((Arg0 == TRTI))
        {
            TRPH = Zero
        }

        If ((Arg0 == PFTI))
        {
            TRPF = Zero
        }

        Return (SMIF)
    }

    Scope (_SB)
    {
        Device (BIND)
        {
            Name (_HID, "INT33D2")  // _HID: Hardware ID
            Name (_CID, "PNP0C40")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (((IUBE & One) && (OSYS == 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (CIND)
        {
            Name (_HID, "INT33D3")  // _HID: Hardware ID
            Name (_CID, "PNP0C60")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (((IUCE & One) && (OSYS == 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (DIND)
        {
            Name (_HID, "INT33D4")  // _HID: Hardware ID
            Name (_CID, "PNP0C70")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (((IUDE & One) && (OSYS == 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (PTMA, 0, NotSerialized)
        {
            Return (PFMA)
        }

        Method (PTMS, 0, NotSerialized)
        {
            Return (PFMS)
        }

        Method (PTIA, 0, NotSerialized)
        {
            Return (PFIA)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            OSYS = 0x07D0
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    OSYS = 0x03E8
                    LINX = One
                }

                If (_OSI ("Windows 2001"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSYS = 0x07D3
                }

                If (_OSI ("Windows 2006"))
                {
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2009"))
                {
                    OSYS = 0x07D9
                }

                If (_OSI ("Windows 2012"))
                {
                    OSYS = 0x07DC
                }

                If (_OSI ("Windows 2013"))
                {
                    OSYS = 0x07DD
                }
            }

            If (((BID == BICO) || (BID == BICC)))
            {
                Acquire (OSUM, 0xFFFF)
                Local1 = MMRP ()
                OperationRegion (RP_X, SystemMemory, Local1, 0x20)
                Field (RP_X, DWordAcc, NoLock, Preserve)
                {
                    REG0,   32, 
                    REG1,   32, 
                    REG2,   32, 
                    REG3,   32, 
                    REG4,   32, 
                    REG5,   32, 
                    REG6,   32, 
                    REG7,   32
                }

                Local2 = REG6
                REG6 = 0x00F0F000
                
                \_GPE.OSUP (\_GPE.MMTB())
                Local2 = REG6
                
                Release (OSUM)
                Acquire (WFDM, 0xFFFF)
                WKFN = One
                Release (WFDM)
            }
            
            
            \_SB.PCI0.RP05.PEGP._OFF ()
        }

        Method (NHPG, 0, Serialized)
        {
            ^RP01.HPEX = Zero
            ^RP02.HPEX = Zero
            ^RP03.HPEX = Zero
            ^RP04.HPEX = Zero
            ^RP05.HPEX = Zero
            ^RP06.HPEX = Zero
            ^RP07.HPEX = Zero
            ^RP08.HPEX = Zero
            ^RP01.HPSX = One
            ^RP02.HPSX = One
            ^RP03.HPSX = One
            ^RP04.HPSX = One
            ^RP05.HPSX = One
            ^RP06.HPSX = One
            ^RP07.HPSX = One
            ^RP08.HPSX = One
        }

        Method (NPME, 0, Serialized)
        {
            ^RP01.PMEX = Zero
            ^RP02.PMEX = Zero
            ^RP03.PMEX = Zero
            ^RP04.PMEX = Zero
            ^RP05.PMEX = Zero
            ^RP06.PMEX = Zero
            ^RP07.PMEX = Zero
            ^RP08.PMEX = Zero
            ^RP01.PMSX = One
            ^RP02.PMSX = One
            ^RP03.PMSX = One
            ^RP04.PMSX = One
            ^RP05.PMSX = One
            ^RP06.PMSX = One
            ^RP07.PMSX = One
            ^RP08.PMSX = One
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero, 
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            Index (PRWP, Zero) = Arg0
            Local0 = (SS1 << One)
            Local0 |= (SS2 << 0x02)
            Local0 |= (SS3 << 0x03)
            Local0 |= (SS4 << 0x04)
            If (((One << Arg1) & Local0))
            {
                Index (PRWP, One) = Arg1
            }
            Else
            {
                Local0 >>= One
                FindSetLeftBit (Local0, Index (PRWP, One))
            }

            Return (PRWP)
        }
    }

    Scope (_SB)
    {
        Name (OSCI, Zero)
        Name (OSCO, Zero)
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If ((Arg1 == One))
                {
                    If ((CAP0 & 0x04))
                    {
                        OSCO = 0x04
                        If (((SGMD & 0x0F) != 0x02))
                        {
                            If ((RTD3 == Zero))
                            {
                                CAP0 &= 0x3B
                                STS0 |= 0x10
                            }
                        }
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        CAP0 |= 0x04
                        OSCI = STS0
                        OSCO = CAP0
                    }
                    Else
                    {
                        CAP0 &= 0xFB
                        OSCO = CAP0
                    }
                }
                Else
                {
                    STS0 &= 0xFFFFFF00
                    STS0 |= 0x0A
                }
            }
            Else
            {
                STS0 &= 0xFFFFFF00
                STS0 |= 0x06
            }

            Return (Arg3)
        }

        Device (PEPD)
        {
            Name (_HID, "INT33A1")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80"))  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PEPP, Zero)
            Name (DEVS, Package (0x03)
            {
                0x02, 
                Package (0x01)
                {
                    "\\_SB.PCI0.GFX0"
                }, 

                Package (0x01)
                {
                    "\\_SB.PCI0.SAT0.PRT1"
                }
            })
            Name (DEVX, Package (0x08)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.UA01", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SDHC", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.I2C0", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.I2C1", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.XHC", 
                    Ones
                }, 

                Package (0x02)
                {
                    "HDAUDIO\\FUNC_01&VEN_10EC&DEV_0282&SUBSYS_00000000&REV_1000\\4&a02b74b&0&0001", 
                    Ones
                }
            })
            Name (DEVY, Package (0x12)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA00", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA01", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "HDAUDIO\\FUNC_01&VEN_10EC&DEV_0282*", 
                    One, 
                    Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.ADSP", 
                    One, 
                    Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }
                    }
                }
            })
            Name (BCCD, Package (0x05)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT0", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT2", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT3", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OSYS >= 0x07DC))
                {
                    If (((CDID & 0xF000) == 0x9000))
                    {
                        If ((S0ID == One))
                        {
                            Return (0x0F)
                        }
                    }
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If ((Arg0 == ToUUID ("b8febfe0-baf8-454b-aecd-49fb91137b21")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                           
                        })
                    }

                    If ((Arg2 == One))
                    {
                        PEPP = One
                        Return (0x0F)
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((Arg1 == Zero))
                        {
                            While (One)
                            {
                                _T_0 = PEPY
                                If ((_T_0 == One))
                                {
                                    Return (Package (0x02)
                                    {
                                        One, 
                                        Package (0x01)
                                        {
                                            "\\_SB.PCI0.GFX0"
                                        }
                                    })
                                }
                                Else
                                {
                                    If ((_T_0 == 0x02))
                                    {
                                        Return (Package (0x02)
                                        {
                                            One, 
                                            Package (0x01)
                                            {
                                                "\\_SB.PCI0.SAT0.PRT1"
                                            }
                                        })
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x03))
                                        {
                                            Return (DEVS)
                                        }
                                        Else
                                        {
                                            Return (Package (0x01)
                                            {
                                                Zero
                                            })
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        If ((Arg1 == One))
                        {
                            If (!(PEPY & One))
                            {
                                Index (DerefOf (Index (DEVX, Zero)), One) = Zero
                            }

                            If (!(PEPY & 0x02))
                            {
                                Index (DerefOf (Index (DEVX, One)), One) = Zero
                            }

                            If (!(PEPY & 0x04))
                            {
                                Index (DerefOf (Index (DEVX, 0x02)), One) = Zero
                            }

                            If (!(PEPY & 0x08))
                            {
                                Index (DerefOf (Index (DEVX, 0x03)), One) = Zero
                            }

                            If (!(PEPY & 0x10))
                            {
                                Index (DerefOf (Index (DEVX, 0x04)), One) = Zero
                            }

                            If (!(PEPY & 0x20))
                            {
                                Index (DerefOf (Index (DEVX, 0x05)), One) = Zero
                            }

                            If (!(PEPY & 0x40))
                            {
                                Index (DerefOf (Index (DEVX, 0x06)), One) = Zero
                            }

                            If (!(PEPY & 0x80))
                            {
                                Index (DerefOf (Index (DEVX, 0x07)), One) = Zero
                            }

                            Return (DEVX)
                        }
                    }
                }

                If ((Arg0 == ToUUID ("c4eb40a0-6cd2-11e2-bcfd-0800200c9a66")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                           
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If (((PEPC & 0x03) != One))
                        {
                            Index (DerefOf (Index (DEVY, 0x06)), One) = Zero
                            Index (DerefOf (Index (DEVY, 0x07)), One) = Zero
                            Index (DerefOf (Index (DEVY, 0x08)), One) = Zero
                            Index (DerefOf (Index (DEVY, 0x09)), One) = Zero
                        }

                        If (((PEPC & 0x03) != 0x02))
                        {
                            Index (DerefOf (Index (DEVY, 0x05)), One) = Zero
                            If (!(SPST & One))
                            {
                                Index (DerefOf (Index (DEVY, 0x06)), One) = Zero
                            }

                            If (!(SPST & 0x02))
                            {
                                Index (DerefOf (Index (DEVY, 0x07)), One) = Zero
                            }

                            If (!(SPST & 0x04))
                            {
                                Index (DerefOf (Index (DEVY, 0x08)), One) = Zero
                            }

                            If (!(SPST & 0x08))
                            {
                                Index (DerefOf (Index (DEVY, 0x09)), One) = Zero
                            }
                        }

                        If (((PEPC & 0x04) == Zero))
                        {
                            Index (DerefOf (Index (DEVY, 0x0A)), One) = Zero
                        }

                        If (((PEPC & 0x08) == Zero))
                        {
                            Index (DerefOf (Index (DEVY, 0x0B)), One) = Zero
                        }

                        If (((PEPC & 0x10) == Zero))
                        {
                            Index (DerefOf (Index (DEVY, 0x0C)), One) = Zero
                        }

                        If (((PEPC & 0x20) == Zero))
                        {
                            Index (DerefOf (Index (DEVY, 0x0D)), One) = Zero
                        }

                        If (((PEPC & 0x40) == Zero))
                        {
                            Index (DerefOf (Index (DEVY, 0x0E)), One) = Zero
                        }

                        If (((PEPC & 0x80) == Zero))
                        {
                            Index (DerefOf (Index (DEVY, 0x0F)), One) = Zero
                        }

                        If (((PEPC & 0x0100) == Zero))
                        {
                            Index (DerefOf (Index (DEVY, 0x10)), One) = Zero
                        }

                        If (((PEPC & 0x0200) == Zero))
                        {
                            Index (DerefOf (Index (DEVY, 0x11)), One) = Zero
                        }

                        Return (DEVY)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (BCCD)
                    }
                }

                Return (One)
            }
        }
    }

    Scope (_SB)
    {
        Device (BTKL)
        {
            Name (_HID, "INT3420")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Windows 2012"))
                {
                    If ((BID == BW2C))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Method (PSTS, 0, NotSerialized)
            {
                Return (RDGP (0x57))
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU0 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU0 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU0 DEP NULL")
                    Return (Package (0x00) {})
                }
            }
        }

        Processor (CPU1, 0x02, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU1 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU1 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU1 DEP NULL")
                    Return (Package (0x00) {})
                }
            }
        }

        Processor (CPU2, 0x03, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU2 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU2 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU2 DEP NULL")
                    Return (Package (0x00) {})
                }
            }
        }

        Processor (CPU3, 0x04, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU3 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU3 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU3 DEP NULL")
                    Return (Package (0x00) {})
                }
            }
        }

        Processor (CPU4, 0x05, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU4 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU4 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU4 DEP NULL")
                    Return (Package (0x00) {})
                }
            }
        }

        Processor (CPU5, 0x06, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU5 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU5 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU5 DEP NULL")
                    Return (Package (0x00) {})
                }
            }
        }

        Processor (CPU6, 0x07, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU6 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU6 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU6 DEP NULL")
                    Return (Package (0x00) {})
                }
            }
        }

        Processor (CPU7, 0x08, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU7 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU7 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU7 DEP NULL")
                    Return (Package (0x00) {})
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y16)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00010000,         // Address Length
                    _Y12)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                RBR0 = (^^LPCB.RCBA << 0x0E)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TBR0)  // _BAS: Base Address
                TBR0 = TBAB
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TBLN)  // _LEN: Length
                If ((TBAB == Zero))
                {
                    TBLN = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, SNR0)  // _BAS: Base Address
                SNR0 = SRMB
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, MBR0)  // _BAS: Base Address
                MBR0 = (MHBR << 0x0F)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, DBR0)  // _BAS: Base Address
                DBR0 = (DIBR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, EBR0)  // _BAS: Base Address
                EBR0 = (EPBR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._BAS, XBR0)  // _BAS: Base Address
                XBR0 = (PXBR << 0x1A)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._LEN, XSZ0)  // _LEN: Length
                XSZ0 = (0x10000000 >> PXSZ)
                Return (BUF0)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L6B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02)
        }

        Method (_L69, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((RP1D == Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }

            If ((RP2D == Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02)
            }

            If ((RP3D == Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02)
            }

            If ((RP4D == Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02)
            }

            If ((RP5D == Zero))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02)
            }

            If ((RP6D == Zero))
            {
                \_SB.PCI0.RP06.HPME ()
                Notify (\_SB.PCI0.RP06, 0x02)
            }

            If ((RP7D == Zero))
            {
                \_SB.PCI0.RP07.HPME ()
                Notify (\_SB.PCI0.RP07, 0x02)
            }

            If ((RP8D == Zero))
            {
                \_SB.PCI0.RP08.HPME ()
                Notify (\_SB.PCI0.RP08, 0x02)
            }
        }

        Method (_L6D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((\_SB.PCI0.EHC1.PMES && \_SB.PCI0.EHC1.PMES))
            {
                \_SB.PCI0.EHC1.PMES = One
                \_SB.PCI0.EHC1.PMEE = Zero
                Notify (\_SB.PCI0.EHC1, 0x02)
            }

            If ((\_SB.PCI0.XHC.PMES && \_SB.PCI0.XHC.PMES))
            {
                \_SB.PCI0.XHC.PMES = One
                \_SB.PCI0.XHC.PMEE = Zero
                Notify (\_SB.PCI0.XHC, 0x02)
            }

            Notify (\_SB.PCI0.HDEF, 0x02)
        }

        Method (_L61, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            L01C += One
            If (((RP1D == Zero) && \_SB.PCI0.RP01.HPSX))
            {
                P8XH (One, One, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = One
                    \_SB.PCI0.RP01.HPSX = One
                    If (!\_SB.PCI0.RP01.PDSX)
                    {
                        \_SB.PCI0.RP01.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = One
                }
            }

            If (((RP2D == Zero) && \_SB.PCI0.RP02.HPSX))
            {
                P8XH (One, 0x02, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = One
                    \_SB.PCI0.RP02.HPSX = One
                    If (!\_SB.PCI0.RP02.PDSX)
                    {
                        \_SB.PCI0.RP02.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = One
                }
            }

            If (((RP3D == Zero) && \_SB.PCI0.RP03.HPSX))
            {
                P8XH (One, 0x03, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = One
                    \_SB.PCI0.RP03.HPSX = One
                    If (!\_SB.PCI0.RP03.PDSX)
                    {
                        \_SB.PCI0.RP03.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = One
                }
            }

            If (((RP4D == Zero) && \_SB.PCI0.RP04.HPSX))
            {
                P8XH (One, 0x04, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    \_SB.PCI0.RP04.PDCX = One
                    \_SB.PCI0.RP04.HPSX = One
                    If (!\_SB.PCI0.RP04.PDSX)
                    {
                        \_SB.PCI0.RP04.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    \_SB.PCI0.RP04.HPSX = One
                }
            }

            If (((RP5D == Zero) && \_SB.PCI0.RP05.HPSX))
            {
                P8XH (One, 0x05, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    \_SB.PCI0.RP05.PDCX = One
                    \_SB.PCI0.RP05.HPSX = One
                    If (!\_SB.PCI0.RP05.PDSX)
                    {
                        \_SB.PCI0.RP05.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    \_SB.PCI0.RP05.HPSX = One
                }
            }

            If (((RP6D == Zero) && \_SB.PCI0.RP06.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP06.PDCX)
                {
                    \_SB.PCI0.RP06.PDCX = One
                    \_SB.PCI0.RP06.HPSX = One
                    If (!\_SB.PCI0.RP06.PDSX)
                    {
                        \_SB.PCI0.RP06.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP06, Zero)
                }
                Else
                {
                    \_SB.PCI0.RP06.HPSX = One
                }
            }

            If (((RP7D == Zero) && \_SB.PCI0.RP07.HPSX))
            {
                P8XH (One, 0x07, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    \_SB.PCI0.RP07.PDCX = One
                    \_SB.PCI0.RP07.HPSX = One
                    If (!\_SB.PCI0.RP07.PDSX)
                    {
                        \_SB.PCI0.RP07.L0SE = Zero
                    }
                }
                Else
                {
                    \_SB.PCI0.RP07.HPSX = One
                }
            }

            If (((RP8D == Zero) && \_SB.PCI0.RP08.HPSX))
            {
                P8XH (One, 0x08, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    \_SB.PCI0.RP08.PDCX = One
                    \_SB.PCI0.RP08.HPSX = One
                    If (!\_SB.PCI0.RP08.PDSX)
                    {
                        \_SB.PCI0.RP08.L0SE = Zero
                    }
                }
                Else
                {
                    \_SB.PCI0.RP08.HPSX = One
                }
            }
        }

        Method (_L62, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            GPEC = Zero
            If (CondRefOf (DTSE))
            {
                If ((DTSE >= One)) {}
            }
        }

        Method (_L66, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((\_SB.PCI0.GFX0.GSSE && !GSMI))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L67, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }
    }

    Name (RPA0, 0x001C0000)
    Name (RPA1, 0x001C0001)
    Name (RPA2, 0x001C0002)
    Name (RPA3, 0x001C0003)
    Name (RPA4, 0x001C0004)
    Name (RPA5, 0x001C0005)
    Name (RPA6, 0x001C0006)
    Name (RPA7, 0x001C0007)
    Name (PCHS, 0x00000002)
    Name (SRMB, 0x9FA10000)
    Name (PML1, 0x00000000)
    Name (PML2, 0x00000000)
    Name (PML3, 0x00000000)
    Name (PML4, 0x00000000)
    Name (PML5, 0x00000000)
    Name (PML6, 0x00000000)
    Name (PML7, 0x55AA55AA)
    Name (PML8, 0x55AA55AA)
    Name (PNL1, 0x00000000)
    Name (PNL2, 0x00000000)
    Name (PNL3, 0x00000000)
    Name (PNL4, 0x00000000)
    Name (PNL5, 0x00000000)
    Name (PNL6, 0x00000000)
    Name (PNL7, 0x55AA55AA)
    Name (PNL8, 0x55AA55AA)
    Scope (\)
    {
        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x3C), 
                ,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (PMLP, SystemIO, (PMBS + 0x80), 0x20)
        Field (PMLP, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            Offset (0x11), 
            GE08,   1, 
                ,   8, 
            GE17,   1, 
                ,   27, 
            GE45,   1, 
                ,   5, 
            GE51,   1, 
            Offset (0x20)
        }

        Field (PMLP, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x01), 
            GS08,   1, 
                ,   8, 
            GS17,   1, 
                ,   27, 
            GS45,   1, 
                ,   5, 
            GS51,   1, 
            Offset (0x10)
        }

        OperationRegion (GPR, SystemIO, GPBS, 0x0400)
        Field (GPR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x1D8), 
                ,   31, 
            GP27,   1, 
            Offset (0x218), 
                ,   31, 
            GO35,   1, 
            Offset (0x2B8), 
                ,   31, 
            GO55,   1, 
            Offset (0x330), 
                ,   30, 
            GI70,   1, 
            Offset (0x334)
        }

        OperationRegion (GPRL, SystemIO, GPBS, 0x40)
        Field (GPRL, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            GO08,   1, 
            GO09,   1, 
                ,   3, 
            GO13,   1, 
            GO14,   1, 
                ,   2, 
            GO17,   1, 
                ,   27, 
            GO45,   1, 
                ,   5, 
            GO51,   1, 
            Offset (0x10), 
            Offset (0x30), 
            GR00,   32, 
            GR01,   32, 
            GR02,   32
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x331C), 
            Offset (0x331F), 
            PMFS,   1, 
            Offset (0x3320), 
            CKEN,   32, 
            Offset (0x3328), 
                ,   1, 
            DPS3,   1, 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
            ADSD,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }

        OperationRegion (IO_P, SystemIO, 0x1000, 0x04)
        Field (IO_P, ByteAcc, NoLock, Preserve)
        {
            TRPF,   8
        }
    }

    Scope (_SB)
    {
        Method (RDGI, 1, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   30, 
                    TEMP,   1
                }

                Return (TEMP)
            }
        }

        Method (RDGP, 1, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   31, 
                    TEMP,   1
                }

                Return (TEMP)
            }
        }

        Method (WTGP, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   31, 
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (WTIN, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                        ,   3, 
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (WPGP, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0104) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   2
                }

                TEMP = Arg1
            }
        }

        Method (GP2N, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (GP2A, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0104) + (Arg0 * 0x08))
                OperationRegion (LGP2, SystemIO, Local0, 0x04)
                Field (LGP2, AnyAcc, NoLock, Preserve)
                {
                    GPWP,   2, 
                    GPIS,   1
                }

                If ((Arg1 == One))
                {
                    GPIS = Zero
                    GPWP = Zero
                }
                Else
                {
                    GPWP = 0x02
                    GPIS = One
                }

                Local0 = (GPBS + 0x10)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }

                If ((Arg0 >= 0x2D))
                {
                    Local1 = (Arg0 - 0x28)
                }
                Else
                {
                    If ((Arg0 <= 0x0A))
                    {
                        Local1 = (Arg0 - 0x08)
                    }
                    Else
                    {
                        Local1 = (Arg0 - 0x0A)
                    }
                }

                Local2 = (One << Local1)
                If (Arg1)
                {
                    TEMP |= Local2
                }
                Else
                {
                    TEMP &= ~Local2
                }
            }
        }

        Method (GP2B, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = (GPBS + 0x10)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }

                If ((Arg0 >= 0x2D))
                {
                    Local1 = (Arg0 - 0x28)
                }
                Else
                {
                    If ((Arg0 <= 0x0A))
                    {
                        Local1 = (Arg0 - 0x08)
                    }
                    Else
                    {
                        Local1 = (Arg0 - 0x0A)
                    }
                }

                Local2 = (One << Local1)
                If (Arg1)
                {
                    TEMP |= Local2
                }
                Else
                {
                    TEMP &= ~Local2
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (LTRE, Zero)
        Name (OBFF, Zero)
        Name (LMSL, Zero)
        Name (LNSL, Zero)
        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x54, 0x12)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0x0E), 
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    PWUC = Ones
                }
                Else
                {
                    PWUC = Zero
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCA)
                    }

                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP)
                        }
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP)
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP)
                        }

                        Device (WCAM)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x25, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                                }
                            })
                        }
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP)
                        }
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP)
                        }
                    }
                }
            }
            Method(_PRW) { Return(Package() { 0x6D, 0 }) }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
                    "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
                    "AAPL,current-available", 2100,
                    "AAPL,current-extra", 2200,
                    "AAPL,current-extra-in-sleep", 1600,
                    "AAPL,device-internal", 0x02,
                    "AAPL,max-port-current-in-sleep", 2100,
                })
            }

            
        }

        Device (XHC)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If ((S0ID == One))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
                Else
                {
                    Return (Package (0x00) {})
                }
            }

            OperationRegion (XPRT, PCI_Config, Zero, 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                DVID,   16, 
                Offset (0x10), 
                MEMX,   32, 
                Offset (0x74), 
                D0D3,   2, 
                Offset (0x75), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0xB0), 
                    ,   13, 
                MB13,   1, 
                MB14,   1, 
                Offset (0xB4), 
                Offset (0xD0), 
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            OperationRegion (XHCM, SystemMemory, (MEMX & 0xFFFFFFF0), 0x0600)
            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                XHCV,   16, 
                Offset (0x480), 
                HP01,   1, 
                Offset (0x490), 
                HP02,   1, 
                Offset (0x510), 
                SP00,   1, 
                Offset (0x520), 
                SP01,   1
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x02))
                {
                    Local0 = Arg1
                    If ((Local0 == Zero))
                    {
                        If ((SP00 == One))
                        {
                            U3DE = One
                        }
                    }
                }
            }

            OperationRegion (XHCP, SystemMemory, (PEBS + 0x000A0000), 0x0100)
            Field (XHCP, AnyAcc, Lock, Preserve)
            {
                Offset (0x04), 
                PDBM,   16, 
                Offset (0x10), 
                MEMB,   64
            }

            Method (PR2S, 1, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (((CDID & 0xF000) == 0x8000))
                {
                    While (One)
                    {
                        _T_0 = Arg0
                        If ((_T_0 == One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            If ((_T_0 == 0x02))
                            {
                                Return (0x02)
                            }
                            Else
                            {
                                If ((_T_0 == 0x03))
                                {
                                    Return (0x04)
                                }
                                Else
                                {
                                    If ((_T_0 == 0x04))
                                    {
                                        Return (0x08)
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x05))
                                        {
                                            Return (0x0100)
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x06))
                                            {
                                                Return (0x0200)
                                            }
                                            Else
                                            {
                                                If ((_T_0 == 0x07))
                                                {
                                                    Return (0x0400)
                                                }
                                                Else
                                                {
                                                    If ((_T_0 == 0x08))
                                                    {
                                                        Return (0x0800)
                                                    }
                                                    Else
                                                    {
                                                        If ((_T_0 == 0x09))
                                                        {
                                                            Return (0x10)
                                                        }
                                                        Else
                                                        {
                                                            If ((_T_0 == 0x0A))
                                                            {
                                                                Return (0x20)
                                                            }
                                                            Else
                                                            {
                                                                If ((_T_0 == 0x0B))
                                                                {
                                                                    Return (0x1000)
                                                                }
                                                                Else
                                                                {
                                                                    If ((_T_0 == 0x0C))
                                                                    {
                                                                        Return (0x2000)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If ((_T_0 == 0x0D))
                                                                        {
                                                                            Return (0x40)
                                                                        }
                                                                        Else
                                                                        {
                                                                            If ((_T_0 == 0x0E))
                                                                            {
                                                                                Return (0x80)
                                                                            }
                                                                            Else
                                                                            {
                                                                                If ((_T_0 == 0x0F))
                                                                                {
                                                                                    Return (0x4000)
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
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
                Else
                {
                    While (One)
                    {
                        _T_1 = Arg0
                        If ((_T_1 == One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            If ((_T_1 == 0x02))
                            {
                                Return (0x02)
                            }
                            Else
                            {
                                If ((_T_1 == 0x03))
                                {
                                    Return (0x04)
                                }
                                Else
                                {
                                    If ((_T_1 == 0x04))
                                    {
                                        Return (0x08)
                                    }
                                    Else
                                    {
                                        If ((_T_1 == 0x05))
                                        {
                                            Return (0x10)
                                        }
                                        Else
                                        {
                                            If ((_T_1 == 0x06))
                                            {
                                                Return (0x20)
                                            }
                                            Else
                                            {
                                                If ((_T_1 == 0x07))
                                                {
                                                    Return (0x40)
                                                }
                                                Else
                                                {
                                                    If ((_T_1 == 0x08))
                                                    {
                                                        Return (0x80)
                                                    }
                                                    Else
                                                    {
                                                        If ((_T_1 == 0x09))
                                                        {
                                                            Return (0x0100)
                                                        }
                                                    }
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

            Name (XRST, Zero)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                Local2 = MEMB
                Local1 = PDBM
                PDBM &= 0xFFFFFFF9
                MEMB = SRMB
                PDBM |= 0x02
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x510), 
                    R510,   32, 
                    Offset (0x520), 
                    R520,   32, 
                    Offset (0x530), 
                    R530,   32, 
                    Offset (0x540), 
                    R540,   32, 
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1
                }

                Local3 = D0D3
                If ((Local3 == 0x03))
                {
                    D0D3 = Zero
                }

                If ((PCHS == 0x02))
                {
                    MB13 = Zero
                    MB14 = Zero
                    CLK0 = Zero
                    CLK1 = Zero
                }

                CLK2 = One
                If ((PCHS == 0x02))
                {
                    While (((((R510 & 0x03FB) == 0x02E0) || ((R520 & 
                        0x03FB) == 0x02E0)) || (((R530 & 0x03FB) == 0x02E0) || ((R540 & 
                        0x03FB) == 0x02E0))))
                    {
                        Stall (0x32)
                    }

                    Local0 = R510
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R510 = (Local0 | 0x80000000)
                        While (((R510 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R510 & 0xFFFFFFFD)
                        R510 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R520
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R520 = (Local0 | 0x80000000)
                        While (((R520 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R520 & 0xFFFFFFFD)
                        R520 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R530
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R530 = (Local0 | 0x80000000)
                        While (((R530 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R530 & 0xFFFFFFFD)
                        R530 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R540
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R540 = (Local0 | 0x80000000)
                        While (((R540 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R540 & 0xFFFFFFFD)
                        R540 = (Local0 | 0x00FE0000)
                    }

                    AX15 = One
                }

                If (CondRefOf (\_SB.PCI0.XHC.PS0X))
                {
                    PS0X ()
                }

                If ((Local3 == 0x03))
                {
                    D0D3 = 0x03
                }

                PDBM &= 0xFFFFFFFD
                MEMB = Local2
                PDBM = Local1
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                PMES = One
                PMEE = One
                Local2 = MEMB
                Local1 = PDBM
                PDBM &= 0xFFFFFFF9
                MEMB = SRMB
                PDBM |= 0x02
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1, 
                    Offset (0x8170)
                }

                Local3 = D0D3
                If ((Local3 == 0x03))
                {
                    D0D3 = Zero
                }

                If ((PCHS == 0x02))
                {
                    MB13 = One
                    MB14 = One
                    CLK0 = One
                    CLK1 = One
                }

                CLK2 = Zero
                If ((PCHS == 0x02))
                {
                    AX15 = Zero
                }

                If (CondRefOf (\_SB.PCI0.XHC.PS3X))
                {
                    PS3X ()
                }

                If ((Local3 == 0x03))
                {
                    D0D3 = 0x03
                }

                PDBM &= 0xFFFFFFFD
                MEMB = Local2
                PDBM = Local1
            }

            Method (CUID, 1, Serialized)
            {
                If ((Arg0 == ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (POSC, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, CDW1)
                CreateDWordField (Arg2, 0x08, CDW3)
                If ((XHCI == Zero))
                {
                    CDW1 |= 0x02
                }

                If (!(CDW1 & One))
                {
                    If ((CDW3 & One))
                    {
                        ESEL ()
                    }
                    Else
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            If ((Arg0 > One))
                            {
                                XSEL ()
                            }
                            Else
                            {
                                CDW1 |= 0x0A
                            }
                        }
                        Else
                        {
                            If ((Arg0 > 0x02))
                            {
                                XSEL ()
                            }
                            Else
                            {
                                CDW1 |= 0x0A
                            }
                        }
                    }
                }

                Return (Arg2)
            }

            Method (XSEL, 0, Serialized)
            {
                If ((MAUL == One))
                {
                    If (((XHCI == 0x02) || (XHCI == 0x03)))
                    {
                        XUSB = One
                        XRST = One
                        PR3 = U3SS
                        PR2 = U2PR
                    }
                }
                Else
                {
                    If (((XHCI == 0x02) || (XHCI == 0x03)))
                    {
                        XUSB = One
                        XRST = One
                        Local0 = Zero
                        Local0 = (PR3 & 0xFFFFFFC0)
                        PR3 = (Local0 | PR3M)
                        PR3 &= 0xFFFFFF01
                        Local0 = Zero
                        Local0 = (PR2 & 0xFFFF8000)
                        PR2 = (Local0 | PR2M)
                        PR2 &= 0xFFFFFF2F
                    }
                }
            }

            Method (ESEL, 0, Serialized)
            {
                If (((XHCI == 0x02) || (XHCI == 0x03)))
                {
                    PR3 &= 0xFFFFFFC0
                    PR2 &= 0xFFFF8000
                    XUSB = Zero
                    XRST = Zero
                }
            }

            Method (XWAK, 0, Serialized)
            {
                If (((XUSB == One) || (XRST == One)))
                {
                    XSEL ()
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (One) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x02) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR2S (0x02) & PR2))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP)
                    }
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x03) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }

                    Device (WCAM)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x25, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                            }
                        })
                    }
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x04) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }

                    Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                    {
                        Return (0x03)
                    }

                    Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                    {
                        Return (0x03)
                    }
                }

                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x05) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x06) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }

                    Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                    {
                        Return (0x03)
                    }

                    Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                    {
                        Return (0x03)
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        If (^^^^LPCB.EC0.LIDT)
                        {
                            GO55 = Zero
                        }
                        Else
                        {
                            GO55 = One
                        }
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        GO55 = Zero
                    }
                }

                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x07) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS08)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x08) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS09)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x09) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS10)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0A)
                        }
                        Else
                        {
                            Return (0xFA)
                        }
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x0A) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS11)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0xFB)
                        }
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x0B) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }

                    Device (WCAM)
                    {
                        Method (_ADR, 0, Serialized)  // _ADR: Address
                        {
                            If (((CDID & 0xF000) == 0x8000))
                            {
                                Return (0x0B)
                            }
                            Else
                            {
                                Return (0xFB)
                            }
                        }

                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x25, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                            }
                        })
                    }
                }

                Device (HS12)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0C)
                        }
                        Else
                        {
                            Return (0xFC)
                        }
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x0C) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS13)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0D)
                        }
                        Else
                        {
                            Return (0xFD)
                        }
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x0D) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS14)
                {
                    Name (_ADR, 0x0E)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x0E) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (HS15)
                {
                    Name (_ADR, 0x0F)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x0F) & PR2))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (SSP1)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x10)
                        }
                        Else
                        {
                            Return (0x0A)
                        }
                    }

                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & One))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR3 & One))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP2)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x11)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x02))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (SSP3)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x12)
                        }
                        Else
                        {
                            Return (0x0C)
                        }
                    }

                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x04))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }

                    Device (WCAM)
                    {
                        Method (_ADR, 0, Serialized)  // _ADR: Address
                        {
                            If (((CDID & 0xF000) == 0x8000))
                            {
                                Return (0x12)
                            }
                            Else
                            {
                                Return (0x0C)
                            }
                        }

                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x25, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                            }
                        })
                    }
                }

                Device (SSP4)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x13)
                        }
                        Else
                        {
                            Return (0x0D)
                        }
                    }

                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x08))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (SSP5)
                {
                    Name (_ADR, 0x14)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x10))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }

                Device (SSP6)
                {
                    Name (_ADR, 0x15)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x20))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP)
                    }
                }
            }
            Method(_PRW) { Return(Package() { 0x6D, 0 }) }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
                    "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
                    "AAPL,current-available", 2100,
                    "AAPL,current-extra", 2200,
                    "AAPL,current-extra-in-sleep", 1600,
                    "AAPL,device-internal", 0x02,
                    "AAPL,max-port-current-in-sleep", 2100,
                })
            }

            
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                Offset (0x09), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }
            Method(_PRW) { Return(Package() { 0x6D, 0 }) }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "layout-id", Buffer() { 3, 0x00, 0x00, 0x00 },
                    "hda-gfx", Buffer() { "onboard-1" },
                    "PinConfigurations", Buffer() { },
                    //"MaximumBootBeepVolume", 77,
                })
            }

            
        }

        Device (RP01)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA0)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR1
                LMSL = PML1
                LNSL = PNL1
                OBFF = OBF1
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        If ((Arg1 == 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                If (((LMSL == Ones) || (LNSL == Ones)))
                                                {
                                                    If ((PCHS == One))
                                                    {
                                                        LMSL = 0x0846
                                                        LNSL = 0x0846
                                                    }
                                                    Else
                                                    {
                                                        If ((PCHS == 0x02))
                                                        {
                                                            LMSL = 0x1003
                                                            LNSL = 0x1003
                                                        }
                                                    }
                                                }

                                                Index (LTRV, Zero) = ((LMSL >> 0x0A) & 0x07)
                                                Index (LTRV, One) = (LMSL & 0x03FF)
                                                Index (LTRV, 0x02) = ((LNSL >> 0x0A) & 0x07)
                                                Index (LTRV, 0x03) = (LNSL & 0x03FF)
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Name (PR04, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR04, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04)
                }

                Return (PR04)
            }
        }

        Device (RP02)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA1)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR2
                LMSL = PML2
                LNSL = PNL2
                OBFF = OBF2
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        If ((Arg1 == 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                If (((LMSL == Ones) || (LNSL == Ones)))
                                                {
                                                    If ((PCHS == One))
                                                    {
                                                        LMSL = 0x0846
                                                        LNSL = 0x0846
                                                    }
                                                    Else
                                                    {
                                                        If ((PCHS == 0x02))
                                                        {
                                                            LMSL = 0x1003
                                                            LNSL = 0x1003
                                                        }
                                                    }
                                                }

                                                Index (LTRV, Zero) = ((LMSL >> 0x0A) & 0x07)
                                                Index (LTRV, One) = (LMSL & 0x03FF)
                                                Index (LTRV, 0x02) = ((LNSL >> 0x0A) & 0x07)
                                                Index (LTRV, 0x03) = (LNSL & 0x03FF)
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Name (PR05, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }
            })
            Name (AR05, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05)
                }

                Return (PR05)
            }
        }

        Device (RP03)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA2)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR3
                LMSL = PML3
                LNSL = PNL3
                OBFF = OBF3
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        If ((Arg1 == 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                If (((LMSL == Ones) || (LNSL == Ones)))
                                                {
                                                    If ((PCHS == One))
                                                    {
                                                        LMSL = 0x0846
                                                        LNSL = 0x0846
                                                    }
                                                    Else
                                                    {
                                                        If ((PCHS == 0x02))
                                                        {
                                                            LMSL = 0x1003
                                                            LNSL = 0x1003
                                                        }
                                                    }
                                                }

                                                Index (LTRV, Zero) = ((LMSL >> 0x0A) & 0x07)
                                                Index (LTRV, One) = (LMSL & 0x03FF)
                                                Index (LTRV, 0x02) = ((LNSL >> 0x0A) & 0x07)
                                                Index (LTRV, 0x03) = (LNSL & 0x03FF)
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Name (PR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKB, 
                    Zero
                }
            })
            Name (AR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06)
                }

                Return (PR06)
            }
        }

        Device (RP04)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA3)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR4
                LMSL = PML4
                LNSL = PNL4
                OBFF = OBF4
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        If ((Arg1 == 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                If (((LMSL == Ones) || (LNSL == Ones)))
                                                {
                                                    If ((PCHS == One))
                                                    {
                                                        LMSL = 0x0846
                                                        LNSL = 0x0846
                                                    }
                                                    Else
                                                    {
                                                        If ((PCHS == 0x02))
                                                        {
                                                            LMSL = 0x1003
                                                            LNSL = 0x1003
                                                        }
                                                    }
                                                }

                                                Index (LTRV, Zero) = ((LMSL >> 0x0A) & 0x07)
                                                Index (LTRV, One) = (LMSL & 0x03FF)
                                                Index (LTRV, 0x02) = ((LNSL >> 0x0A) & 0x07)
                                                Index (LTRV, 0x03) = (LNSL & 0x03FF)
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Name (PR07, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }
            })
            Name (AR07, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07)
                }

                Return (PR07)
            }
        }

        Device (RP05)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA4)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR5
                LMSL = PML5
                LNSL = PNL5
                OBFF = OBF5
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        If ((Arg1 == 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                If (((LMSL == Ones) || (LNSL == Ones)))
                                                {
                                                    If ((PCHS == One))
                                                    {
                                                        LMSL = 0x0846
                                                        LNSL = 0x0846
                                                    }
                                                    Else
                                                    {
                                                        If ((PCHS == 0x02))
                                                        {
                                                            LMSL = 0x1003
                                                            LNSL = 0x1003
                                                        }
                                                    }
                                                }

                                                Index (LTRV, Zero) = ((LMSL >> 0x0A) & 0x07)
                                                Index (LTRV, One) = (LMSL & 0x03FF)
                                                Index (LTRV, 0x02) = ((LNSL >> 0x0A) & 0x07)
                                                Index (LTRV, 0x03) = (LNSL & 0x03FF)
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Name (PR08, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR08, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR08)
                }

                Return (PR08)
            }
        }

        Device (RP06)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA5)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR6
                LMSL = PML6
                LNSL = PNL6
                OBFF = OBF6
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        If ((Arg1 == 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                If (((LMSL == Ones) || (LNSL == Ones)))
                                                {
                                                    If ((PCHS == One))
                                                    {
                                                        LMSL = 0x0846
                                                        LNSL = 0x0846
                                                    }
                                                    Else
                                                    {
                                                        If ((PCHS == 0x02))
                                                        {
                                                            LMSL = 0x1003
                                                            LNSL = 0x1003
                                                        }
                                                    }
                                                }

                                                Index (LTRV, Zero) = ((LMSL >> 0x0A) & 0x07)
                                                Index (LTRV, One) = (LMSL & 0x03FF)
                                                Index (LTRV, 0x02) = ((LNSL >> 0x0A) & 0x07)
                                                Index (LTRV, 0x03) = (LNSL & 0x03FF)
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Name (PR09, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR09, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (((CDID & 0xF000) == 0x8000))
                {
                    If (PICM)
                    {
                        Return (AR09)
                    }

                    Return (PR09)
                }
                Else
                {
                    If (PICM)
                    {
                        Return (AR08)
                    }

                    Return (PR08)
                }
            }
        }

        Device (RP07)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA6)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR7
                LMSL = PML7
                LNSL = PNL7
                OBFF = OBF7
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        If ((Arg1 == 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                If (((LMSL == Ones) || (LNSL == Ones)))
                                                {
                                                    If ((PCHS == One))
                                                    {
                                                        LMSL = 0x0846
                                                        LNSL = 0x0846
                                                    }
                                                    Else
                                                    {
                                                        If ((PCHS == 0x02))
                                                        {
                                                            LMSL = 0x1003
                                                            LNSL = 0x1003
                                                        }
                                                    }
                                                }

                                                Index (LTRV, Zero) = ((LMSL >> 0x0A) & 0x07)
                                                Index (LTRV, One) = (LMSL & 0x03FF)
                                                Index (LTRV, 0x02) = ((LNSL >> 0x0A) & 0x07)
                                                Index (LTRV, 0x03) = (LNSL & 0x03FF)
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Name (PR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKB, 
                    Zero
                }
            })
            Name (AR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0E)
                }

                Return (PR0E)
            }
        }

        Device (RP08)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA7)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR8
                LMSL = PML8
                LNSL = PNL8
                OBFF = OBF8
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        If ((Arg1 == 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                If (((LMSL == Ones) || (LNSL == Ones)))
                                                {
                                                    If ((PCHS == One))
                                                    {
                                                        LMSL = 0x0846
                                                        LNSL = 0x0846
                                                    }
                                                    Else
                                                    {
                                                        If ((PCHS == 0x02))
                                                        {
                                                            LMSL = 0x1003
                                                            LNSL = 0x1003
                                                        }
                                                    }
                                                }

                                                Index (LTRV, Zero) = ((LMSL >> 0x0A) & 0x07)
                                                Index (LTRV, One) = (LMSL & 0x03FF)
                                                Index (LTRV, 0x02) = ((LNSL >> 0x0A) & 0x07)
                                                Index (LTRV, 0x03) = (LNSL & 0x03FF)
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Name (PR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKB, 
                    Zero
                }
            })
            Name (AR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0E)
                }

                Return (PR0E)
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("SAT0 DEP Call")
                If ((OSYS >= 0x07DD))
                {
                    If (((S0ID == One) && ((PEPC & 0x03) != Zero)))
                    {
                        ADBG ("SAT0 DEP")
                        Return (Package (0x01)
                        {
                            PEPD
                        })
                    }
                }

                ADBG ("SAT0 DEP NULL")
                Return (Package (0x00) {})
            }

            Device (PRT0)
            {
                Name (_ADR, 0xFFFF)  // _ADR: Address
                Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }

                Method (_GTF, 0, Serialized)  // _GTF: Get Task File
                {
                    If ((((DVS0 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                             0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                        })
                        Return (PIB1)
                    }

                    Name (PIB2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                    })
                    Return (PIB2)
                }
            }

            Device (PRT1)
            {
                Name (_ADR, 0x0001FFFF)  // _ADR: Address
                Name (FDEV, Zero)
                Name (FDRP, Zero)
                Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }

                Method (_GTF, 0, Serialized)  // _GTF: Get Task File
                {
                    If ((((DVS1 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                             0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                        })
                        Return (PIB1)
                    }

                    Name (PIB2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                    })
                    Return (PIB2)
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x0002FFFF)  // _ADR: Address
                Name (FDEV, Zero)
                Name (FDRP, Zero)
                Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }

                Method (_GTF, 0, Serialized)  // _GTF: Get Task File
                {
                    If ((((DVS2 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                             0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                        })
                        Return (PIB1)
                    }

                    Name (PIB2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                    })
                    Return (PIB2)
                }
            }

            Device (PRT3)
            {
                Name (_ADR, 0x0003FFFF)  // _ADR: Address
                Name (FDEV, Zero)
                Name (FDRP, Zero)
                Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }

                Method (_GTF, 0, Serialized)  // _GTF: Get Task File
                {
                    If ((((DVS3 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                             0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                        })
                        Return (PIB1)
                    }

                    Name (PIB2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                    })
                    Return (PIB2)
                }
            }
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (Ones)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Index (Arg2, Zero))
                HCON = 0x54
                While ((SizeOf (Arg2) > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If ((SizeOf (Arg2) > Local1))
                    {
                        HBDR = DerefOf (Index (Arg2, Local1))
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While ((!(HSTS & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                Index (TBUF, Zero) = DAT0
                HSTS = 0x80
                Local1 = One
                While ((Local1 < DerefOf (Index (TBUF, Zero))))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Index (TBUF, Local1) = HBDR
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Local0--
                        Sleep (One)
                        If ((Local0 == Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }
            Method(_PRW) { Return(Package() { 0x6D, 0 }) }
        }
    }

    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000) {})
    OperationRegion (MDBG, SystemMemory, 0x9AFB8018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        If (MDEN)
        {
            SHOW (Arg0)
            MDGC (0x20)
            MDG0 = MBUF
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (DW2H, 1, Serialized)
    {
        Local0 = Arg0
        Local1 = (Arg0 >> 0x08)
        Local0 &= 0xFF
        Local1 &= 0xFF
        DB2H (Local1)
        BUFN--
        DB2H (Local0)
    }

    Method (DD2H, 1, Serialized)
    {
        Local0 = Arg0
        Local1 = (Arg0 >> 0x10)
        Local0 &= 0xFFFF
        Local1 &= 0xFFFF
        DW2H (Local1)
        BUFN--
        DW2H (Local0)
    }

    Method (MBGS, 1, Serialized)
    {
        If (MDEN)
        {
            Local0 = SizeOf (Arg0)
            Name (BUFS, Buffer (Local0) {})
            BUFS = Arg0
            MDGC (0x20)
            While (Local0)
            {
                MDGC (DerefOf (Index (BUFS, (SizeOf (Arg0) - Local0))))
                Local0--
            }

            MDG0 = MBUF
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (ADBG, 1, Serialized)
    {
        If (MDEN)
        {
            Local0 = SizeOf (Arg0)
            Name (BUFS, Buffer (Local0) {})
            BUFS = Arg0
            MDGC (0x20)
            While (Local0)
            {
                MDGC (DerefOf (Index (BUFS, (SizeOf (Arg0) - Local0))))
                Local0--
            }

            MDG0 = MBUF
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC ((Arg0 >> 0x04)))
        MDGC (NTOC (Arg0))
    }

    Method (LINE, 0, Serialized)
    {
        Local0 = BUFN
        Local0 &= 0x0F
        While (Local0)
        {
            MDGC (Zero)
            Local0++
            Local0 &= 0x0F
        }
    }

    Method (MDGC, 1, Serialized)
    {
        Index (MBUF, BUFN) = Arg0
        BUFN += One
        If ((BUFN > 0x0FFF))
        {
            BUFN &= 0x0FFF
            UP_L (One)
        }
    }

    Method (UP_L, 1, Serialized)
    {
        Local2 = Arg0
        Local2 <<= 0x04
        MOVE (Local2)
        Local3 = (0x1000 - Local2)
        While (Local2)
        {
            Index (MBUF, Local3) = Zero
            Local3++
            Local2--
        }
    }

    Method (MOVE, 1, Serialized)
    {
        Local4 = Arg0
        BUFN = Zero
        Local5 = (0x1000 - Local4)
        While (Local5)
        {
            Local5--
            Index (MBUF, BUFN) = DerefOf (Index (MBUF, Local4))
            BUFN++
            Local4++
        }
    }

    Method (NTOC, 1, Serialized)
    {
        Local0 = (Arg0 & 0x0F)
        If ((Local0 < 0x0A))
        {
            Local0 += 0x30
        }
        Else
        {
            Local0 += 0x37
        }

        Return (Local0)
    }

    Name (NLID, Zero)
    Name (LINX, Zero)
    Scope (_SB)
    {
        Name (ECOK, Zero)
        Method (VTOB, 1, NotSerialized)
        {
            Local0 = One
            Local0 <<= Arg0
            Return (Local0)
        }

        Method (BTOV, 1, NotSerialized)
        {
            Local0 = (Arg0 >> One)
            Local1 = Zero
            While (Local0)
            {
                Local1++
                Local0 >>= One
            }

            Return (Local1)
        }

        Method (MKWD, 2, NotSerialized)
        {
            If ((Arg1 & 0x80))
            {
                Local0 = 0xFFFF0000
            }
            Else
            {
                Local0 = Zero
            }

            Local0 |= Arg0
            Local0 |= (Arg1 << 0x08)
            Return (Local0)
        }

        Method (POSW, 1, NotSerialized)
        {
            If ((Arg0 & 0x8000))
            {
                If ((Arg0 == 0xFFFF))
                {
                    Return (Ones)
                }
                Else
                {
                    Local0 = ~Arg0
                    Local0++
                    Local0 &= 0xFFFF
                    Return (Local0)
                }
            }
            Else
            {
                Return (Arg0)
            }
        }

        Method (GBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            Arg2 = TIDX
        }

        Method (PBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            TIDX = Arg2
        }

        Method (ITOS, 1, NotSerialized)
        {
            Local0 = Buffer (0x09)
                {
                    /* 0000 */  0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00                                           
                }
            Local7 = Buffer (0x11)
                {
                    "0123456789ABCDEF"
                }
            Local1 = 0x08
            Local2 = Zero
            Local3 = Zero
            While (Local1)
            {
                Local1--
                Local4 = ((Arg0 >> (Local1 << 0x02)) & 0x0F)
                If (Local4)
                {
                    Local3 = Ones
                }

                If (Local3)
                {
                    GBFE (Local7, Local4, RefOf (Local5))
                    PBFE (Local0, Local2, Local5)
                    Local2++
                }
            }

            Return (Local0)
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
        }
    }

    Scope (_SB)
    {
        Device (ACAD)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (ACST, Zero)
            Name (ACWT, Zero)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((^^PCI0.LPCB.EC0.SIMU == 0x53))
                {
                    ACST = Zero
                }
                Else
                {
                    If (ECOK)
                    {
                        ACST = ^^PCI0.LPCB.EC0.ACDF
                    }
                    Else
                    {
                        ACST = One
                    }
                }

                PWRS = ACST
            }

            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                ACWT = ACST
                If ((^^PCI0.LPCB.EC0.SIMU == 0x53))
                {
                    ACST = Zero
                }
                Else
                {
                    If (ECOK)
                    {
                        ACST = ^^PCI0.LPCB.EC0.ACDF
                    }
                    Else
                    {
                        ACST = One
                    }
                }

                If (ACST)
                {
                    Local0 = One
                    ^^BAT1.BCRI = Zero
                }
                Else
                {
                    Local0 = Zero
                }

                PWRS = ACST
                If ((ACWT != ACST))
                {
                    PNOT ()
                }

                Return (Local0)
            }
        }
    }

    Scope (_SB)
    {
        Device (BAT1)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (CBTI, Zero)
            Name (PBTI, Zero)
            Name (BTIN, Zero)
            Name (BTCH, Zero)
            Name (BIFI, Zero)
            Name (SEL0, Zero)
            Name (BCRI, Zero)
            Name (PBIF, Package (0x0D)
            {
                One, 
                0x1130, 
                0x1130, 
                One, 
                0x2B5C, 
                0x012C, 
                0x84, 
                0x20, 
                0x20, 
                "BAT1      ", 
                "11        ", 
                "11        ", 
                "11        "
            })
            Name (PBIX, Package (0x14)
            {
                Zero, 
                One, 
                0x1130, 
                0x1130, 
                One, 
                0x2B5C, 
                0x012C, 
                0x84, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x20, 
                0x20, 
                "BAT1      ", 
                "11        ", 
                "11        ", 
                "11        "
            })
            Name (PBST, Package (0x04)
            {
                Zero, 
                Ones, 
                Ones, 
                0x2710
            })
            Name (ERRC, Zero)
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (BTPF, Zero)
            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                BTPF = Arg0
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (ECOK)
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                IVBI ()
                If (ECOK)
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UBIF ()
                    }
                }

                Return (PBIF)
            }

            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                IVBX ()
                If (ECOK)
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UBIX ()
                    }
                }

                Return (PBIX)
            }

            Method (IVBI, 0, NotSerialized)
            {
                Index (PBIF, One) = Ones
                Index (PBIF, 0x02) = Ones
                Index (PBIF, 0x04) = Ones
                Index (PBIF, 0x09) = "Bad"
                Index (PBIF, 0x0A) = "      "
                Index (PBIF, 0x0B) = "Bad"
                Index (PBIF, 0x0C) = "Bad"
            }

            Name (LFCC, 0x1130)
            Method (UBIF, 0, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (ECOK)
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    Local0 = ^^PCI0.LPCB.EC0.BTDC
                    Local1 = ^^PCI0.LPCB.EC0.LFCC
                    Local2 = ^^PCI0.LPCB.EC0.BTDV
                    Local3 = ^^PCI0.LPCB.EC0.BTMD
                    Local4 = ^^PCI0.LPCB.EC0.BTMN
                    Local5 = ^^PCI0.LPCB.EC0.BTSN
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Index (PBIF, One) = Local0
                    Index (PBIF, 0x02) = Local1
                    Index (PBIF, 0x04) = Local2
                    LFCC = Local1
                    Local7 = (Local1 * 0x04)
                    Local7 /= 0x64
                    Index (PBIF, 0x06) = Local7
                    Index (PBIF, 0x0B) = "LION"
                    While (One)
                    {
                        _T_0 = Local3
                        If ((_T_0 == One))
                        {
                            Index (PBIF, 0x09) = "AP13B3K"
                        }
                        Else
                        {
                            If ((_T_0 == 0x02))
                            {
                                Index (PBIF, 0x09) = "AP13B"
                            }
                            Else
                            {
                                If ((_T_0 == 0x03))
                                {
                                    Index (PBIF, 0x09) = "TW932SM"
                                }
                                Else
                                {
                                    If ((_T_0 == 0x04))
                                    {
                                        Index (PBIF, 0x09) = "AP13B8K"
                                    }
                                    Else
                                    {
                                        Index (PBIF, 0x09) = "xxxxx"
                                    }
                                }
                            }
                        }

                        Break
                    }

                    While (One)
                    {
                        _T_1 = Local4
                        If ((_T_1 == 0x03))
                        {
                            Index (PBIF, 0x0C) = "SANYO"
                        }
                        Else
                        {
                            If ((_T_1 == 0x04))
                            {
                                Index (PBIF, 0x0C) = "SONY"
                            }
                            Else
                            {
                                If ((_T_1 == 0x05))
                                {
                                    Index (PBIF, 0x0C) = "PANASONIC"
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        Index (PBIF, 0x0C) = "SAMSUNG"
                                    }
                                    Else
                                    {
                                        If ((_T_1 == 0x07))
                                        {
                                            Index (PBIF, 0x0C) = "SIMPLO"
                                        }
                                        Else
                                        {
                                            If ((_T_1 == 0x08))
                                            {
                                                Index (PBIF, 0x0C) = "MOTOROLA"
                                            }
                                            Else
                                            {
                                                If ((_T_1 == 0x09))
                                                {
                                                    Index (PBIF, 0x0C) = "CELXPERT"
                                                }
                                                Else
                                                {
                                                    If ((_T_1 == 0x0A))
                                                    {
                                                        Index (PBIF, 0x0C) = "LGC"
                                                    }
                                                    Else
                                                    {
                                                        Index (PBIF, 0x0C) = "UNKNOWN"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }

                    Index (PBIF, 0x0A) = ITOS (ToBCD (Local5))
                }
            }

            Method (IVBX, 0, NotSerialized)
            {
                Index (PBIX, 0x02) = Ones
                Index (PBIX, 0x03) = Ones
                Index (PBIX, 0x05) = Ones
                Index (PBIX, 0x10) = "Bad"
                Index (PBIX, 0x11) = "      "
                Index (PBIX, 0x12) = "Bad"
                Index (PBIX, 0x13) = "Bad"
            }

            Method (UBIX, 0, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (ECOK)
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    Local0 = ^^PCI0.LPCB.EC0.BTDC
                    Local1 = ^^PCI0.LPCB.EC0.LFCC
                    Local2 = ^^PCI0.LPCB.EC0.BTDV
                    Local3 = ^^PCI0.LPCB.EC0.BTMD
                    Local4 = ^^PCI0.LPCB.EC0.BTMN
                    Local5 = ^^PCI0.LPCB.EC0.BTSN
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Index (PBIX, 0x02) = Local0
                    Index (PBIX, 0x03) = Local1
                    Index (PBIX, 0x05) = Local2
                    LFCC = Local1
                    Local7 = (Local1 * 0x04)
                    Local7 /= 0x64
                    Index (PBIX, 0x07) = Local7
                    Index (PBIX, 0x12) = "LION"
                    While (One)
                    {
                        _T_0 = Local3
                        If ((_T_0 == One))
                        {
                            Index (PBIX, 0x10) = "AP13B3K"
                        }
                        Else
                        {
                            If ((_T_0 == 0x02))
                            {
                                Index (PBIX, 0x10) = "AP13B"
                            }
                            Else
                            {
                                If ((_T_0 == 0x03))
                                {
                                    Index (PBIX, 0x10) = "TW932SM"
                                }
                                Else
                                {
                                    If ((_T_0 == 0x04))
                                    {
                                        Index (PBIX, 0x10) = "AP13B8K"
                                    }
                                    Else
                                    {
                                        Index (PBIX, 0x10) = "UNKNOWN"
                                    }
                                }
                            }
                        }

                        Break
                    }

                    While (One)
                    {
                        _T_1 = Local4
                        If ((_T_1 == 0x03))
                        {
                            Index (PBIX, 0x13) = "SANYO"
                        }
                        Else
                        {
                            If ((_T_1 == 0x04))
                            {
                                Index (PBIX, 0x13) = "SONY"
                            }
                            Else
                            {
                                If ((_T_1 == 0x05))
                                {
                                    Index (PBIX, 0x13) = "PANASONIC"
                                }
                                Else
                                {
                                    If ((_T_1 == 0x06))
                                    {
                                        Index (PBIX, 0x13) = "SAMSUNG"
                                    }
                                    Else
                                    {
                                        If ((_T_1 == 0x07))
                                        {
                                            Index (PBIX, 0x13) = "SIMPLO"
                                        }
                                        Else
                                        {
                                            If ((_T_1 == 0x08))
                                            {
                                                Index (PBIX, 0x13) = "MOTOROLA"
                                            }
                                            Else
                                            {
                                                If ((_T_1 == 0x09))
                                                {
                                                    Index (PBIX, 0x13) = "CELXPERT"
                                                }
                                                Else
                                                {
                                                    If ((_T_1 == 0x0A))
                                                    {
                                                        Index (PBIX, 0x13) = "LGC"
                                                    }
                                                    Else
                                                    {
                                                        Index (PBIX, 0x13) = "UNKNOWN"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }

                    Index (PBIX, 0x11) = ITOS (ToBCD (Local5))
                }
            }

            Name (RCAP, Zero)
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (ECOK)
                {
                    Local0 = ^^PCI0.LPCB.EC0.MBTS
                    If ((Local0 == Zero))
                    {
                        Index (PBST, Zero) = Zero
                        Index (PBST, One) = Ones
                        Index (PBST, 0x02) = Ones
                        Index (PBST, 0x03) = Ones
                        RCAP = Zero
                        Return (PBST)
                    }

                    Local1 = ^^PCI0.LPCB.EC0.MBRM
                    Index (PBST, 0x02) = Local1
                    RCAP = Local1
                    Local3 = ^^PCI0.LPCB.EC0.MCUR
                    Index (PBST, One) = POSW (Local3)
                    If ((Local3 != Zero))
                    {
                        If (^^PCI0.LPCB.EC0.MBPC)
                        {
                            Index (PBST, Zero) = 0x02
                        }
                        Else
                        {
                            Index (PBST, Zero) = One
                        }
                    }
                    Else
                    {
                        Index (PBST, Zero) = Zero
                    }

                    Index (PBST, 0x03) = ^^PCI0.LPCB.EC0.MBVG
                }
                Else
                {
                    Index (PBST, Zero) = Zero
                    Index (PBST, One) = Ones
                    Index (PBST, 0x02) = Ones
                    Index (PBST, 0x03) = Ones
                    RCAP = Zero
                }

                Return (PBST)
            }
        }
    }

    Scope (_SB)
    {
        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (^^PCI0.LPCB.EC0.LIDT)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (TZ01)
        {
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\_SB.ECOK)
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.CTMP
                    Return (((Local0 * 0x0A) + 0x0AAC))
                }
                Else
                {
                    Return (0x0C3C)
                }
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                If ((\_SB.PCI0.LPCB.EC0.TJMX == Zero))
                {
                    Return (0x0F5C)
                }
                Else
                {
                    If ((\_SB.PCI0.LPCB.EC0.TJMX == One))
                    {
                        Return (0x0F5C)
                    }
                    Else
                    {
                        If ((\_SB.PCI0.LPCB.EC0.TJMX == 0x02))
                        {
                            Return (0x0F5C)
                        }
                        Else
                        {
                            Return (0x0F5C)
                        }
                    }
                }
            }

            Name (_PSL, Package (0x01)  // _PSL: Passive List
            {
                \_PR.CPU0
            })
            Name (_TSP, 0x28)  // _TSP: Thermal Sampling Period
            Name (_TC1, 0x02)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                If ((\_SB.PCI0.LPCB.EC0.TJMX == Zero))
                {
                    Return (0x0DFE)
                }
                Else
                {
                    If ((\_SB.PCI0.LPCB.EC0.TJMX == One))
                    {
                        Return (0x0E30)
                    }
                    Else
                    {
                        If ((\_SB.PCI0.LPCB.EC0.TJMX == 0x02))
                        {
                            Return (0x0E94)
                        }
                        Else
                        {
                            Return (0x0EB2)
                        }
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (PNLT, Buffer (0x0A)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x00, 0x00                                     
        })
        Method (CRBL, 0, NotSerialized)
        {
            Index (PNLT, Zero) = ^LPCB.EC0.BCL0
            Index (PNLT, One) = ^LPCB.EC0.BCL1
            Index (PNLT, 0x02) = ^LPCB.EC0.BCL2
            Index (PNLT, 0x03) = ^LPCB.EC0.BCL3
            Index (PNLT, 0x04) = ^LPCB.EC0.BCL4
            Index (PNLT, 0x05) = ^LPCB.EC0.BCL5
            Index (PNLT, 0x06) = ^LPCB.EC0.BCL6
            Index (PNLT, 0x07) = ^LPCB.EC0.BCL7
            Index (PNLT, 0x08) = ^LPCB.EC0.BCL8
            Index (PNLT, 0x09) = ^LPCB.EC0.BCL9
            ^GFX0.BLM0 = (^LPCB.EC0.BCL0 | 0x8A00)
            ^GFX0.BLM1 = (^LPCB.EC0.BCL1 | 0x9400)
            ^GFX0.BLM2 = (^LPCB.EC0.BCL2 | 0x9E00)
            ^GFX0.BLM3 = (^LPCB.EC0.BCL3 | 0xA800)
            ^GFX0.BLM4 = (^LPCB.EC0.BCL4 | 0xB200)
            ^GFX0.BLM5 = (^LPCB.EC0.BCL5 | 0xBC00)
            ^GFX0.BLM6 = (^LPCB.EC0.BCL6 | 0xC600)
            ^GFX0.BLM7 = (^LPCB.EC0.BCL7 | 0xD000)
            ^GFX0.BLM8 = (^LPCB.EC0.BCL8 | 0xDA00)
            ^GFX0.BLM9 = (^LPCB.EC0.BCL9 | 0xE400)
            ^GFX0.BLMX = Zero
        }
    }

    Scope (_SB)
    {
        OperationRegion (EXCO, SystemIO, 0x72, 0x02)
        Field (EXCO, ByteAcc, NoLock, Preserve)
        {
            INDX,   8, 
            DATA,   8
        }

        IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
        {
            Offset (0x81), 
            RDWL,   1, 
            RDBT,   1, 
            RD3G,   1, 
                ,   1, 
            PTWL,   1, 
            PTBT,   1, 
            PT3G,   1
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (Zero)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0) {}
    }

    Method (WAK, 1, NotSerialized)
    {
    }
}

