# BulkyModem-32 (Mini RS-232)
While doing the full ESP8266-based version of BulkyModem, I did get to wondering about what I was missing out on by not using an ESP32. I tried reading the documentation, and then the source code - and in the end I just built this in order to see what it does. Somehow that seemed like the easier solution.

![Mini RS-232 in use](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/mini32_rs232/016.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> SD-card](#11-sd-card)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building the device should be a straight-forward affair, you just solder the meager selection of components into place. Pay attention to keep the alignment of the parts somewhat straight, then you should be good. This documentation was written with a board that looks like the following in mind, but note that the github-repository may contain changes that have yet to be tested (therefore, it is recommend that PCBs are ordered using PCBWay links listed in the BOM).

![Bare boards](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/mini32_rs232/001.jpg)

Components should be installed in the order of their physical height, but beyond the choice of a specific variant of the MAX232-chip used there's not all that much that can go wrong beyond making things harder for yourself to put it together. While cheaper variants such as the old MAX232 (no letter) and the MAX232**C** requires electrolytic capacitors (polarized), I recommend using a MAX232**A** as that simply uses ceramic 100nF capacitors instead. There are provisions for both options, but the combination need to match up with another. There are also two diodes, these have a stripe that needs to be matched correctly to the markings.

Most components will be hidden under the 30-pin variants of the ESP-32 that we'll be using, the ones I'm using in the pictures was listed on marketing sites as *ESP-32 development board / ESP32-WROOM-32D*. The module itself needs to be lifted above the rest of the components by using female pin headers, then we can insert the module on top of that. I recommend soldering a pin on each side, then check if the alignment is suitable to actually get the module in there before soldering the rest.

**NB!** Don't insert the module all the way onto the pin headers until they've been soldered in, mostly to avoid accidentally pulling out the pins from the pin header.

The LEDs can be any colour of your choice as long as you adjust the resistors used with them, for that reason each footprint will have a text describing what they are connected to. The suggested value is just a starting point for a modern bright LED, but for the older type with a coloured plastic body - you need to pick something else. Usually a value from 330 ohm up to 1k ohm may be more suitable. Check out [LED Series Resistor Calculator](https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-led-series-resistor) if you need to find the "correct" value, fill in 5v and something like 10mA as a starting point - forward voltage will normally be dictated by the LED colour used.

![Completed unit](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/mini32_rs232/010.jpg)

I recommend installing the sketch onto the ESP-32 while it is disconnected from the rest of the unit, but beyond that I'm not going to go into programming it here - for that information, see the [setting it up](https://github.com/tebl/BulkyModem/blob/main/documentation/setting_it_up_mini_rs232.md) guide.

## 1.1> SD-card
The ESP32-based devices such as the *BulkyModem-32 (Mini RS-232)* include some additional features not found on those based on the ESP8266, among them is the ability to use SD-cards with the modem. While I won't even attempt to pretend to understand what everything found within Zimodem should be used for, an SD-card seems to be an attractive expansion that can be added onto it via the header at the bottom (marked *J1*). The pin order was matched to a widely available module for use with ESP32, two of them are shown in the picture below.

![SD-module](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/mini32_rs232/020.jpg)
![Installed module](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/mini32_rs232/021.jpg)

Given that I wanted the *BulkyModem-32 (Mini RS-232)* to be somewhat "mini", at least compared to the full device, there probably isn't an ideal way of installing it. You can have it installed using wires, soldered directly above or even below the main board - you just need to ensure that the pads with the square is matched up with another. Installing it above the board requires that the ICs are installed without sockets, the module will then be pointed towards the inside of the device and we'll need to unplug the ESP32 to replace the memory card. Other options means having it pointing to the outside, or stuck to the underside with something in between to avoid shorting. Essentially, pick something you're comfortable living with.

With an SD-card installed you'll have access to another set up tools, including the ability to have the ESP32 retrieve files over http or ftp (unfortunately, no SSL support) and store them to the card. Files can be transferred between the modem and your vintage system using the XMODEM-protocol. The following commands should be all you need to get started using it:
```
at+shell
OK
/> help
```

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/BulkyModem/tree/main/documentation/schematic) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). As I expect that most will build this adapter solely for MIDI-output, the values required for the MIDI input have been listed in parenthesis.

| Reference      | Item                                                  | Count | Order  |
| ---------------| ----------------------------------------------------- | ----- | ------ |
| Faceplate PCB  | Fabricate using Gerber files                          |     1 | PCBWay
| A1             | ESP32-WROOM-32D development board, 30-pin             |     1 |
|                | 15-pin female pin header                              |     2 |
| C1,C8          | 100nF (104) ceramic capacitor (5mm)                   |     2 |
| C2-C5 *1       | 1uF electrolytic capacitor (2mm pin spacing)          |     4 |
| D1-D5          | 3mm LED                                               |     5 |
| D14,D15        | 1N4148N small signal diode (DO-35)                    |     2 |
| J1 *2          | Micro Mini SD Storage Expansion Board Mini            |    (1)|
| J2             | Female DB9, panel mount connector                     |     1 |
| R1-R4,R6 *3    | 2k2 ohm resistor                                      |     5 |
| R5,R18         | 10k ohm resistor                                      |     2 |
| U3 *1          | MAX232 (DIP-16), preferably MAX232A                   |     1 |
| U6             | 74HCT32 (DIP-14)                                      |     1 |

1) You need to install 1uF electrolytic capacitors here if you're using one of the cheaper MAX232-variants, usually marked MAX232**C** or without any letters at all. If you have one that's marked MAX232**A**, then you should install 100nF capacitors here instead - this is also the recommended configuration. If there are more letters than those on the chip, just look at the first one.
2) This is more or less the magical search string that got what I wanted on AliExpress, check the section on [building](#11-sd-card) it for pictures of what it actually looks like. Anything else and you would probably need to figure out how to wire it correctly, see [schematic](#2-schematic) for pin names.
3) The correct values to install here depends on the specific LED you're installing on D1-D5, the suggested value is intended for the more modern kind of bright LEDs. If the plastic already has a colour you need something lower, possibly 330 to 1k depending on the colour.
