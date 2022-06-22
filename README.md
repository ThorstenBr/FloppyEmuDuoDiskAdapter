# FloppyEmu DuoDisk Adapter
This project contains a KiCad PCB to create a FloppyEmu-DuoDisk Adapter for the [Big Mess of Wires - FloppyEmu](https://www.bigmessowires.com/floppy-emu/) - an SD-card based disk drive emulator for the Apple II computer.
The adapter allows to connect the FloppyEmu to the DuoDisk cable and switch each drive separately (select each of the two DuoDisk drives or each of the two emulated FloppyEmu drives).

This adapter is for the Apple II DuoDisk only. It will not work with the Disk II drive. You can buy a switch adapter for the Disk II drive directly from [Big Mess of Wires](https://shop.bigmessowires.com/products/apple-disk-drive-ab-switch).

## License
This project is released under the "Creative Commons Attribution 4.0 International Public License". See [LICENSE](/LICENSE).


## Description
The adapter plugs into the DuoDisk's rear DB-25 connector - and provides a DB-25 connector for the DuoDisk cable from the Apple II disk interface card.
The card also provides a standard box header to connect the FloppyEmu ribbon cable:

![DuoDiskAdapter](/resources/DuoDiskPlugged.jpg)

There are three switches on the adapter:

* **DRIVE1**: maps the Apple II drive 1 to either the DuoDisk or the FloppyEmu.
* **DRIVE2**: maps the Apple II drive 2 to either the DuoDisk or the FloppyEmu.
* **SWAP 1/2**: swaps the FloppyEmu drives 1+2. This switch is not strictly needed (can be replaced by soldered jumpers). However, I found it convenient when running a mixed setup, with one drive mapped to the DuoDisk and one to the FloppyEmu. So you could map drive 1 (boot drive) to the DuoDisk, and map the drive 2 to FloppyEmu - but then swap the FloppyEmu drives, so drive 2 is actually mapped to FloppyEmu drive 1 (the default drive) instead.

![DuoDiskAdapter](/KiCad/DuoDiskAdapter3D.png)

## Parts List
Parts list for the completed PCB:
* 1x 2x10pin box header
* 1x DB-25 male connector
* 1x DB-25 female connector
* 1x 470 Ohm resistor
* 4x 10K Ohm resistor
* 2x Toggle Switch ON/ON (cheap Goobay KNX-1)
* optional: 1x Toggle Switch 2xON/ON (cheap Goobay KNX-2)

I ordered parts from my usual German electronics online shop for about 4€. I created a public shopping list containing all the parts.
Parts are very common and should remain available. I'd expect that only the two switches may depend upon availability - but there are many similar switches, so these are easily replaced.

[Shopping List at Reichelt.de](https://www.reichelt.de/my/1958081?LANGUAGE=EN):
* 1x WSL 20G
* 1x D-SUB ST 25
* 1x D-SUB BU 25
* 1x 1/4W 470
* 4x 1/4W 10K
* 2x GOOBAY 10020
* 1x GOOBAY 10021

## Gerber Files, Ordering a PCB
If you wished to directly order a PCB (PCBWay, JLCPCB etc) you could use the latest Gerber files from the [Gerber](/Gerber/) directory. Just upload the ZIP file to your preferred PCB manufacturer and order the PCB. My PCBs were manufactured by JLCPCB (using the cheapest options, I got mine already after about 1.5 weeks for a few bucks/Euros).

## Soldering
Soldering is straight forward. Only simple through-hole components are used. All part numbers and component values are marked directly on the PCB.

Just take care to not mix up the male and female DB-25 connectors. Having to desolder these is messy - you do not want the experience... :)
* Solder the female DB-25 connector to J1 (Apple II Drive Controller).
* Solder the male DB-25 connector to J2 (DuoDisk).

The DB-25 connectors for J1/J2 use simple "solder bucket" pins (not straight, nor angled pins).
The PCB is simply plugged in between the two bucket rows - and then soldered. It's easy - and indeed a very rigid connection.

**DOUBLE-CHECK THE PROPER ORIENTATION OF THE BOX HEADER!**  
The notch for the box header is clearly marked on the PCB. The notch must be facing towards the J2/DuoDisk-side of the PCB.
Incorrect orientation of the box header for FloppyEmu could damage or destroy your FloppyEmu, Apple II - or both...

![DuoDiskAdapter](/resources/CompletedPcb.jpg)

### Soldering Options
The toggle switch to SWAP drive 1+2 of FloppyEmu is optional. You may find it convenient when mixing drives of DuoDisk and FloppyEmu.
Otherwise, if you mainly plan to either use DuoDisk, or otherwise FloppyEmu, but rarely a combination, then the additional switch may just add confusion.
You can omit the "swapping switch" (SW3) and just solder jumpers instead - as shown:

![DuoDiskAdapter](/resources/NoSwapSwitchJumpers.jpg)

Also, if you just wanted an adapter to map a single drive only (i.e. keep drive 2 fixed to DuoDisk or FloppyEmu, while only drive 1 can be switched), you can also replace switch SW2 with a soldered jumper - as shown:
* Red jumper to map disk 2 always to DuoDisk.
* Blue jumper to map disk 2 always to FloppyEmu.

![DuoDiskAdapter](/resources/NoDisk2SwitchJumpers.jpg)

Note, SW2 to switch drive 2 only makes sense for newer FloppyEmus (rev C or newer), which support dual disk emulation.
If you are using an older FloppyEmu Model B, supporting single disk emulation only, then omit switch SW2 and solder the red jumper as shown above.

## Installation
Make sure the Apple II is switched off.

**DO NOT CONNECT THE ADAPTER OR THE FLOPPY EMU WHILE YOUR MACHINE IS POWERED!**

* Disconnect the DB-25 cable from the DuoDisk.
* Instead of the DB-25 cable, plug the completed PCB into the rear of the DuoDisk.
* Connect the DB-25 cable to the adapter.
* Finally connect FloppyEmu's ribbon cable to the adapter.

The adapter will be conveniently placed just above the Apple II's main power switch. You will be used to "hug" your Apple II with your left arm, when swiching it on/off. In the same way you can now reach the switches, to chose between DuoDisk and FloppyEmu drives.

![DuoDiskAdapter](/resources/DuoDiskPlugged2.jpg)

I was a initially concerned that I might have to shorten FloppyEmu's ribbon cable, since the long cable is now in series with the original DuoDisk cable. However, so far, I have not experienced any issues (reading/writing FloppyEmu disks) and I just kept the ribbon cable at its original length.

## Usage
* The middle switch (SW1) maps Disk 1 to DuoDisk when the switch is flipped to the rear, otherwise Disk 1 of FloppyEmu is enabled.
* The front switch (SW2) maps Disk 2 to DuoDisk when the switch is flipped to the rear, otherwise Disk 2 of FloppyEmu is enabled.
* SW3, if installed, allows to swap Disks 1/2 of Floppy Emu. Default setting is when SW3 is flipped to the front (Disk 1/2=FloppyEmu Disk 1/2), otherwise the drives are swapped.

In most cases you can flip the middle switch only (toggle drive 1 between DuoDisk and FloppyEmu). The other switches are only relevant when you plan to use multiple drives, e.g. to copy data from a real disk to FloppyEmu or vice versa.

Do not flip the switches while the drives are actively used. This could result in corrupted disks, when writing.
It's safe to flip the switches, however, while the drives are not being accessed.

### Copying Disks
You can copy between real disks in your DuoDisk drive and emulated FloppyEmu disks.
Carefully read the FloppyEmu manual on copying disks: while there are no limitations when copying from an emulated to a real disk, there are limitations when copying entire disks to FloppyEmu (i.e. the emulation does not supported formatting, .woz disk format should be used - see [FloppyEmu manual](http://www.bigmessowires.com/femu-instructions.pdf) for details).

## Schematics and KiCad Project
The [KiCad](/KiCad/) folder contains the schematics and PCB project files, if you wished to adapt the design.

![DuoDiskAdapter](/KiCad/DuoDiskAdapter_Schematics.png)

## Trivia
*Q: What about the tiny PCB imprint below the swap 1/2 switch?*  
*A: Only users of an Apple II with German character set will understand...* :-)
