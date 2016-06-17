###Process of Modifying DSDT
==========

1. Download [iasl51](https://bitbucket.org/RehabMan/acpica/downloads) use iasl to extract clean DSDT/SSDTs from raw DSDT/SSDTs
```
./iasl51 -da *.aml
// move clean dsl files to clean/ , you can also do it manually!
mkdir clean && mv raw/*.dsl clean/
```
2. Download [MaciASL](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads) and start editing clean dsl files.