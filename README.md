# OP5T OPLongshot PNG mod

This fixes OPLongshot to produce PNG files instead of JPG files.

## Deprecation

This does not work as of OxygenOS 10, because the system APKs no longer have their vdex files included outside of the original APK.

Also, I've moved on to a new phone.

## Method

1. Retrieve the DEX file from the VDEX file using [vdex2dex](https://github.com/angelsl/vdex2dex).
2. Disassemble the Dalvik bytecode using [baksmali](https://github.com/JesusFreke/smali).
3. [Patch](https://github.com/angelsl/op5tlongshotpng/commit/smali) the code to produce PNG.
4. Reassemble using smali.
5. Recompile the DEX into ODEX/VDEX (on the device itself):

   `dex2oat --class-loader-context=\& --boot-image=/system/framework/boot.art --dex-file=OPLongshot.dex --dex-location=/system/app/OPLongshot/OPLongshot.apk --oat-file=OPLongshot.odex --instruction-set=arm64 --instruction-set-variant=generic --instruction-set-features=default --runtime-arg -Xnorelocate --compile-pic --no-generate-debug-info --generate-build-id --force-determinism --no-inline-from=core-oj.jar --compiler-filter=quicken`
6. Package it together!

The OPLongshot.apk is the original file. The benefit of this method is that OPLongshot.apk keeps its original signature!

N.B. I do not commit the binaries to Git. You may follow the steps above to reproduce my build. (I am not sure if the resulting file will match bit-for-bit.)

---

# **OP5T OPLongshot PNG mod**

## Description

A module that fixes the OP5T OPLongshot to produce PNG screenshots

## Changelog

Initial release.

## Requirements

- A OnePlus 5T

## Instructions

Be sure to clear the Dalvik cache for OPLongshot after installing this. (If unsure, just clear the whole cache.)

## Links
[Module XDA Forum Thread](https://forum.xda-developers.com/apps/magisk/module-png-patch-op5t-oplongshot-t3780355)

[Latest stable Magisk](http://www.tiny.cc/latestmagisk)
