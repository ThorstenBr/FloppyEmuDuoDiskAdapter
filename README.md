# FloppyEmu DuoDisk Adapter
This project contains a KiCad PCB to create a FloppyEmu-DuoDisk Adapter for the [Big Mess of Wires - FloppyEmu](https://www.bigmessowires.com/floppy-emu/) - an SD-card based disk drive emulator for the Apple II computer.
The adapter allows to connect the FloppyEmu to the DuoDisk cable and switch each drive separately (select each of the two DuoDisk drives or each of the two emulated FloppyEmu drives).

## License
This project is released under the "Creative Commons Attribution 4.0 International Public License". See [LICENSE](/LICENSE).


## Description
The adapter plugs into the DuoDisk's rear DB-25 connector - and provides a DB-25 connector for the DuoDisk cable from the Apple II disk interface card.
The card also provides a standard boxed header to connect the FloppyEmu ribbon cable:

![DuoDiskAdapter](/resources/DuoDiskPlugged.jpg)

There are three switches on the adapter:

* DRIVE1: maps the Apple II drive 1 to either the DuoDisk or the FloppyEmu.
* DRIVE2: maps the Apple II drive 2 to either the DuoDisk or the FloppyEmu.
* SWAP 1/2: swaps the FloppyEmu drives 1+2. This switch is not strictly needed (can be replaced by soldered jumpers). However, I found it convenient, when running a mixed setup, with one drive mapped to the DuoDisk and one to the FloppyEmu. So you could map drive 1 (boot drive) to the DuoDisk, and map the drive 2 to FloppyEmu - but then swap the FloppyEmu drives, so drive 2 is actually mapped to FloppyEmu drive 1 (the default drive) instead.

![DuoDiskAdapter](/KiCad/DuoDiskAdapter3D.png)

## Parts List
Parts list for the completed PCB:
* 2x10pin boxed header
* 1x DB-25 male connector
* 1x DB-25 female connector
* 1x 470 Ohm resistor
* 4x 10K Ohm resistor
* 2x Toggle Switch ON/ON (cheap Goobay KNX-1)
* optional: 1x Toggle Switch 2xON/ON (cheap Goobay KNX-2)

![DuoDiskAdapter](/resources/CompletedPcb.jpg)

## Installation
Make sure the Apple II is switched off.

*DO NOT CONNECT THE ADAPTER OR THE FLOPPY EMU WHILE YOUR MACHINE IS POWERED!*

* Disconnect the DB-25 cable from the DuoDisk.
* Instead of the DB-25 cable, plug the completed PCB into the rear of the DuoDisk.
* Connect the DB-25 cable to the adapter.
* Eventually connect FloppyEmu's ribbon cable to the adapter.

The adapter will be conveniently placed just above the Apple II's main power switch:

![DuoDiskAdapter](/resources/DuoDiskPlugged2.jpg)

## Schematics and KiCad Project
The [KiCad](/KiCad/) folder contains the schematics and PCB project files, if you wished to adapt the design.

![DuoDiskAdapter](/KiCad/DuoDiskAdapter_Schematics.png)

## Gerber Files
If you wished to directly order a PCB (PCBWay, JLCPCB etc) you could use the latest Gerber files from the [Gerber](/KiCad/Gerber/) directory. Just upload the ZIP file to your preferred PCB manufacturer and order the PCB. My PCBs were manufactured by JLCPCB (using the cheapest options, I got mine already after about 1.5 weeks for a few bucks/Euros).

