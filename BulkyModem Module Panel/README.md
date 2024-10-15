# BulkyModem Module Panel
This is a front-facing panel for controlling the original *BulkyModem*, alternatively the functionally similar *BulkyModem-32*. The difference between the two being the type of MCU used in its design, but as for a front panel - this is compatible with both. The installation of such a panel will be covered within the documentation for each of those two designs, but the assembly of the panel itself will be covered herein.

![BulkyModem](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_b/016.jpg)

A front panel is an optional feature and you could quite possibly build a functional design without it, but I feel that it makes the system a lot more enjoyable to use. Along the way I've also developed a second [B-variant](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel%20B) of the panel with its primary difference being the use of an RGB LED in place of the power LED, changing the colour when it is on standby. I do, however, recommend that you stick with this version of it. 

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)


# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *BulkyModem* or *BulkyModem-32* using the main PCB by themselves, you're here because you've been looking into building a more complete version of it. That includes a front panel module as well as additional faceplates that would go on the top, bottom and the front of it. That sounds like a lot, but it's worth it. I promise! 

Now that you've arrived at *concepts of a plan* for what you want to build, we can get started on one of the more expensive step in any build process - shopping! For reference, the most expensive step is probably setting your desk and/or house on fire (don't drink and solder). Anyway, when ready to continue with the whole shopping thing that you've heard so much about - head on over to the [BOM](#3-bom)-section. There you'll find information on the kind of components that you'll need.

While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there personally. So what I do, is to make due with what I can find on sites such as eBay, AliExpress or any other future site that will inevitably seem to sell the same, and quite possibly identical set of cheap Chinese components. The downside for you is that I can't link to a part directly and expect it to stay listed tomorrow, so you'll need to consider their descriptions as *suggested search terms* and not *part numbers* in any accurate sense of the definition.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components should go and in which orientation. All of this should be clearly marked on the silkscreen, but I'll try to cover most of the questionable bits as we get to them.

![Build 001](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/002.jpg)

**NB!** These pictures were taken when building an earlier revision of the PCB, revision C has the top row of components removed (which also explains why they're missing from the BOM). Sorry about that.

![Build 003](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/003.jpg)

Ignoring the two diodes and single resistor that I've already apologized to you for showing you. They're no longer on your PCB, and so you can't install them. Easiest step *ever*!

![Build 005](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/005.jpg)

The first thing you actually get to install is the some right-angle pin headers, and while you're probably an expert at installing such things - the important bit, is to notice is that we need install it on the reverse-side of the PCB! As for the alignment we have a need for it to sit flush against the PCB, so if possible - start by soldering in the opposing corners. Then reheat and push the plastic body of it flush against the board. Just as an FYI; maybe not touch the same piece of metal as that will heat up quite significantly.

![Build 006](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/006.jpg)

As for my next trick, I'm showing you how to install 10mm hex standoffs to each of the four corners (illustrated using a similar, but not exactly the same PCB as shown earlier). The hex shape needs to be rotated so that a flat edge lines up with the left and right edges of the PCB, the reason for this will become evident when we finally attempt to install it onto the main module.

![Build 007](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/007.jpg)
![Build 008](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/008.jpg)

The latching switches used should be as shown, in particular you should make sure that the colour of them match up. Seemingly identical switches with a blue base has shown up in my workshop from time to time, but they have a different pinout and won't work with this board design. Looking at the underside of it, you should notice that there's a rectangular hole that's further towards one side of it - this is the same rectangle that's marked on the PCB. While the pictures don't include it, I recommend both picking up and then installing the  black keycaps onto them. Actually doing that might take a bit of force, but they'll usually go on without too much of a fight. As for this step you shouldn't solder anything, just insert them into the correct orientation.

![Build 012](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/012.jpg)

The front panel includes a significant amount of indicator LEDs, and like the switches you should only loosely insert them into place without soldering. While each leg of an LED has a name, I always forget which is which - so I'll just tell you to push the longer one into the round pads at the top. As is evident by the markings on the PCB, one side should also have a slightly flattened edge. Said edge might be bit hard to actually see on some of the extremely cheap LEDs I've seen floating around, so don't look too hard for it if you've been shopping at the same places that I have. With everything still threatening to fall out at any given moment, add your chosen front faceplate onto the top of it all. Fix temporarily into place using some leftover standoffs.

![Build 013](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/013.jpg)

At this point, most of the LEDs should fall into their corresponding cutouts on the front faceplate, at which point you should be able to solder in one leg of each of them at a time. I prefer to reheat them and immediately press down on the other pin, that way I'm certain that each will end up sitting flush against the cutouts before soldering the rest. As for the switches you will need to press against it from the top, or actually the bottom from this angle, so that it also stays flush. The usage of the black keycaps mentioned earlier will ensure that they end up sitting in their correct position, but if needed: solder one pin, ensure that the switch can move freely, and then soldering remaining pins.

![Build 014](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_a/014.jpg)
![Build 016](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/panel_b/016.jpg)

As for the remaining tasks, I've just cut off the excess from the LED pins before replacing all temporary standoffs with screws. As for this part of the assembly, I think that just about wraps it up. The actual installation of the module will be covered in the relevant part of the document for assembling either the [BulkyModem](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module), or alternatively the [BulkyModem-32](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Module).


# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs. Most if not all fabrication companies will expect Gerber-files, these are generated from KiCAD though you will be able to bypass this step by using PCBway shared projects. As for the schematic, one has been provided for you in [PDF-format](https://github.com/tebl/BulkyModem/tree/main/documentation/schematic) - an important source of information when things inevitably fail to work as advertised.


# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery).

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| Panel PCB             | Fabricate using Gerber files                                      |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyModem_Panel_a5862704.html)
| D1,D2,D10-D15,D17 *1  | 5mm LEDs                                                          |     9 |
| J1                    | Breakable right-angle pin header                                  |     1 |
| SW1,SW2               | 6pin 8.5mm x 8.5mm latching switch (including keycap)             |     2 |
| Mounting *2           | Nylon M3 hex standoffs 10mm (M-F)                                 |     4 |
| Mounting *2           | Nylon M3x6mm nylon screws                                         |     4 |
| Mounting *2           | Nylon M3x6mm nylon nuts                                           |     4 |

1) I highly recommend using frosted LEDs, but if you can only find clear ones then you could always frost them a bit yourself using sandpaper or some sort of polishing tool. Personally I prefer using two sets of colours, one for POW/RS-232/C64 and another for the rest. Do note that the corresponding resistor on the main unit must be sized accordingly to differences in colour, or just plain preferences.
2) These are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need. I do however recommend that you pick up extra M-F standoffs of lengths 10mm and 20mm, as quite a lot of them will be used when building more than one complete module.