###Process of Modifying DSDT
==========

1. Download [iasl51](https://bitbucket.org/RehabMan/acpica/downloads) use iasl to extract clean DSDT/SSDTs from raw DSDT/SSDTs
```
./iasl51 -da *.aml
// move clean dsl files to clean/ , you can also do it manually!
mkdir clean && mv raw/*.dsl clean/
```
2. Download [MaciASL](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads) and start editing clean dsl files. Add [Laptop-DSDT-Patch] repo into MaciASL. If you are doing all things correct, you will get few errors to be fixed in DSDT.dsl (i only got 4 errors).

3. Fix errors: 
  - DSDT: method local variable is not initialized: [Solution Ref #272](http://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/page-28#post-1036066)
  - SSDT-0