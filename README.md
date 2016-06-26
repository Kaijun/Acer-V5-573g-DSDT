###Process of Modifying DSDT (Based On Tables from Bios 2.30)
==========

1.  Download [iasl51](https://bitbucket.org/RehabMan/acpica/downloads) use iasl to extract clean DSDT/SSDTs from raw DSDT/SSDTs
  ```
  ./iasl51 -da -dl -fe refs.txt *.aml
  // move clean dsl files to clean/ , you can also do it manually!
  mkdir clean && mv raw/*.dsl clean/
  ```
  
  As i know, different Models have different DSDT/SSDTs structures:
  For my own Model: i5 Version non-HD:
  ```
  DSDT - we all have it!
  SSDT0 - Nvidia Graphical Card parAt! Which contains lot of `\_SB.PCI0` scopes
  SSDT1 - Unknown, but keep it! Contains only one scope `\_SB` and one device `IAOE`
  SSDT2 - Internal Graphical Card part! Which contains one `\_SB.PCI0` scopes and `B0D3`(or different) and `GFX0` device
  SSDT3,4 - CPU part. You will see lot of `CPU` scopes. Just **Remove** them! We don't need it! We generate SSDT for CPU later with tools.
  ```
  
  Others like i7 Version HD, or maybe i5 Version HD:
  ```
  DSDT - we all have it!
  SSDT0-4 - CPU part. You will see lot of `CPU` scopes. Just **Remove** them! We don't need it! We generate SSDT for CPU later with tools.
  SSDT5 - Internal Graphical Card part! Which contains one `\_SB.PCI0` scopes and `B0D3`(or different) and `GFX0` device
  SSDT6 - Nvidia Graphical Card part! Which contains lot of `\_SB.PCI0` scopes
  SSDT7 - Unknown, but keep it! Contains only one scope `\_SB` and one device `IAOE`
  ```
  
  **Notice**! My tutorial is based on the structure of mine! Please notice your filenames and fit to your own related DSDT/SSDTs! 
2.  Download [MaciASL](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads) and start editing clean dsl files. Add [Laptop-DSDT-Patch](https://github.com/RehabMan/Laptop-DSDT-Patch) repo into MaciASL. 

3. Error Fix: Now we are using `./iasl51 -da -dl -fe refs.txt *.aml` command with help of `refs.txt` ([Referenced Topic](http://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/)). So there should be **No Errors** in your DSDT/SSDTs. If you are interested in how to fix errors manually, please checkout the `deprecated` branch.

4. At the very beginning, we patch Common Fixes: ([Referenced Topic](http://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/))
  - Apply `Remove _DSM methods` patch to **all DSDT/SSDTs**!
  - Apply following patched to **DSDT**
  	* Fix _WAK Arg0 v2
  	* HPET Fix
  	* SMBUS Fix
  	* IRQ Fix
  	* RTC Fix
  	* OS Check Fix (Windows 8)
  	* Fix Mutex with non-zero SyncLevel
  	* Add IMEI

5. Disable Nvdia:
  - At the top of DSDT, add
  ```
  External (_SB_.PCI0.RP05.PEGP._OFF, MethodObj) // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
  External (_SB_.PCI0.RP05.PEGP._ON, MethodObj) // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
  ```

  - Add `\_SB.PCI0.RP05.PEGP._ON()` at the beginning of `_PTS` method
  - Add `\_SB.PCI0.RP05.PEGP._OFF()` at the end of `_WAK` method, but before `Return` statement
  - Add `\_SB.PCI0.RP05.PEGP._OFF()` at the end of `SB.PCI0._INI` method

6. Graphic Fix:
  - DSDT: Apply Patch `Rename GFX0 to IGPU`
  - SSDT-0 (Nvidia Graphic fix): Apply Patch `Rename GFX0 to IGPU`
  - SSDT-1: Apply Patch `Rename GFX0 to IGPU`
  - SSDT-2(Internal Graphic): Apply Patch `Rename GFX0 to IGPU` -> `Haswell HD4400` -> `Brightness fix Haswell`

  
7. USB Fix in `DSDT` for **El Capitan**: 
  - Apply Patch `7-Series/8-Series USB`  
  - Apply Patch `USB3 _PRW 0x6D`: Check the description in patch if you're interested. It will fix almost all the USB related stuffs.
  - As Rehabman mentioned, rename EHC* and XHC are not the long term solution. So a patch in Clover 45484331 -> 45483031 is then the tempory solution. It works only with two Kexts provided by Rehabman: `FakePCIID_XHCIMux.kext` + `USBInjectAll.kext`

  
8. Audio Fix
  - Apply Patch `Audio Layout 03`,  works together with AppleHDA/DummyHDA with 03 Layout.
  - Apply Patch `HEPT Fix`, `IRQ Fix`


9. Shutdown Fix in `DSDT`:
  - Before `_PTS` method, add
  ```
  OperationRegion (PMRS, SystemIO, 0x1830, One)
  Field (PMRS, ByteAcc, NoLock, Preserve)
  {
    , 4,
    SLPE, 1
  }
  ```
  - In `_PTS` method, in `If (LEqual (Arg0, 0x05))` method add:
  ```
  If (LEqual (Arg0, 0x05))
  {
      P8XH (0x04, 0x55, Zero)
      P8XH (0x04, 0x55, One)
      //added to fix shutdown
      Store (Zero, SLPE)
      Sleep (0x10)
      
  }
  ```

10. Brightness Keys (*** Only for Synaptics with VoodooPS2 ***) [(Tutorial)](http://www.tonymacx86.com/threads/guide-patching-dsdt-ssdt-for-laptop-backlight-control.152659/)
  - Seems that Keys can't be captured under El Capitain? **Don't** Apply the Patch below! ~~Apply patch below: (Notice: _Q8E and _Q8F are what i captured with ACPIDebug.kext, i don't know if yours is same as mine)~~
  ```
  # Make EC-based brightness up/down work with RehabMan VoodooPS2 ACPI keyboard mechanism
  into method label _Q8E replace_content
  begin
  // Brightness Down\n
      Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)\n
  end;
  into method label _Q8F replace_content
  begin
  // Brightness Up\n
      Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)\n
  end;
  ```
11. Wait for your contribution!


###SSDT Generation
[`ssdtPRGen.sh`](https://github.com/Piker-Alpha/ssdtPRGen.sh) is the tool we are using.
```
curl -o ssdtPRGen.sh https://raw.githubusercontent.com/Piker-Alpha/ssdtPRGen.sh/Beta/ssdtPRGen.sh
chmod +x ssdtPRGen.sh
./ssdtPRGen.sh -x 1 -p 'i5-4200U'
```
```
ASL Input:     /Users/Kaijun/Library/ssdtPRGen/ssdt.dsl - 264 lines, 7903 bytes, 49 keywords
AML Output:    /Users/Kaijun/Library/ssdtPRGen/ssdt.aml - 1619 bytes, 16 named objects, 33 executable opcodes
```
Copy `ssdt.aml` to Clover!
**Notice**: i5-4200U is my CPU model, replace with yours!

