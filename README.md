# FloppyEmu DuoDisk Adapter
This project contains a KiCad PCB to create a FloppyEmu-DuoDisk Adapter for the [Big Mess of Wires - FloppyEmu](https://www.bigmessowires.com/floppy-emu/) - an SD-card based disk drive emulator for the Apple II computer.
The adapter allows to connect the FloppyEmu to the DuoDisk cable and switch each drive separately (select each of the two DuoDisk drives or each of the two emulated FloppyEmu drives).

This adapter is for the Apple II DuoDisk only. It will not work with the Disk II drive. You can buy a switch adapter for the Disk II drive directly from [Big Mess of Wires](https://shop.bigmessowires.com/products/apple-disk-drive-ab-switch).

## License
This project is released under the "Creative Commons Attribution 4.0 International Public License". See [LICENSE](/LICENSE).


## Description
The adapter plugs into the DuoDisk's rear DB-25 connector - and provides a DB-25 connector for the DuoDisk cable from the Apple II disk interface card.
The card also provides a standard boxed header to connect the FloppyEmu ribbon cable:

![DuoDiskAdapter](/resources/DuoDiskPlugged.jpg)

There are three switches on the adapter:

* **DRIVE1**: maps the Apple II drive 1 to either the DuoDisk or the FloppyEmu.
* **DRIVE2**: maps the Apple II drive 2 to either the DuoDisk or the FloppyEmu.
* **SWAP 1/2**: swaps the FloppyEmu drives 1+2. This switch is not strictly needed (can be replaced by soldered jumpers). However, I found it convenient when running a mixed setup, with one drive mapped to the DuoDisk and one to the FloppyEmu. So you could map drive 1 (boot drive) to the DuoDisk, and map the drive 2 to FloppyEmu - but then swap the FloppyEmu drives, so drive 2 is actually mapped to FloppyEmu drive 1 (the default drive) instead.

![DuoDiskAdapter](/KiCad/DuoDiskAdapter3D.png)

## Parts List
Parts list for the completed PCB:
* 1x 2x10pin boxed header
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

## Soldering
Soldering is straight forward. Simple through-hole components are used. All part numbers and component values are marked directly on the PCB.

Just take care to not mix up the male and female DB-25 connectors. Having to desolder these is messy - you do not want the experience... :)
* Solder the female DB-25 connector to J1 (Apple II Drive Controller).
* Solder the male DB-25 connector to J2 (DuoDisk).

The DB-25 connectors for J1/J2 use simple "solder bucket" connectors (not pins).
The PCB is simply plugged in between the two bucket rows - and then soldered. It's easy - and indeed a very rigid connection.

**DO NOT ROTATE THE BOXED HEADER!**
The notch for the boxed header is also clearly marked on the PCB. The notch must be facing towards the J2/DuoDisk-side of the PCB.

![DuoDiskAdapter](/resources/CompletedPcb.jpg)

The toggle switch to SWAP drive 1+2 of FloppyEmu is optional. You may find it convenient when mixing drives of DuoDisk and FloppyEmu.
Otherwise, if you mainly plan to either use DuoDisk, or otherwise FloppyEmu - but rarely a combination - then it's probably less confusing by omitting the swap switch. Just solder jumpers instead of SW3 as shown:
![DuoDiskAdapter](/resources/NoSwapSwitchJumpers.jpg)

## Gerber Files
If you wished to directly order a PCB (PCBWay, JLCPCB etc) you could use the latest Gerber files from the [Gerber](/Gerber/) directory. Just upload the ZIP file to your preferred PCB manufacturer and order the PCB. My PCBs were manufactured by JLCPCB (using the cheapest options, I got mine already after about 1.5 weeks for a few bucks/Euros).

## Installation
Make sure the Apple II is switched off.

*DO NOT CONNECT THE ADAPTER OR THE FLOPPY EMU WHILE YOUR MACHINE IS POWERED!*

* Disconnect the DB-25 cable from the DuoDisk.
* Instead of the DB-25 cable, plug the completed PCB into the rear of the DuoDisk.
* Connect the DB-25 cable to the adapter.
* Finally connect FloppyEmu's ribbon cable to the adapter.

The adapter will be conveniently placed just above the Apple II's main power switch:

![DuoDiskAdapter](/resources/DuoDiskPlugged2.jpg)

## Usage
The middle switch (SW1) maps Disk 1 to DuoDisk when the switch is flipped to the rear, otherwise Disk 1 of FloppyEmu is enabled.
The front switch (SW2) maps Disk 2 to DuoDisk when the switch is flipped to the rear, otherwise Disk 2 of FloppyEmu is enabled.
SW3, if installed, allows to swap Disk 1/2 of Floppy Emu. Default setting is when SW3 is flipped to the front (Disk 1/2=FloppyEmu Disk 1/2), otherwise the drives are swapped.

In most cases you can flip the middle switch only (toggle drive 1 between DuoDisk and FloppyEmu). The other switches are only relevant when you plan to use multiple drives, e.g. to copy data from a real disk to FloppyEmu or vice versa.

## Schematics and KiCad Project
The [KiCad](/KiCad/) folder contains the schematics and PCB project files, if you wished to adapt the design.

![DuoDiskAdapter](/KiCad/DuoDiskAdapter_Schematics.png)

## Trivia
*Q: What about the tiny PCB imprint below the swap 1/2 switch?*  
*A: Only users of an Apple II with German character set will understand...* :-)
