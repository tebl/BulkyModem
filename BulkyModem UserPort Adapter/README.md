# BulkyModem C64/128 UserPort Adapter
This is an adapter for connecting up the *BulkyModem*, alternatively the functionally similar *BulkyModem-32*, up to everyone's favorite 8-bit system that's not the NES. Commodore 64! The answer is Commodore 64! Got that? Yes, it's also compatible with the Commodore 128 if that's what you were thinking about. It currently looks like this:

![BulkyModem Adapter](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/012.jpg)

You plug the adapter into the *User Port* on your computer, then it hooks up to your *BulkyModem* using commonly available *2x8 pin IDC cable* that's regularly sold on the regular sites. As for why you need an adapter, it started out as a straight up adapter with no active components on it though I soon discovered that you generally don't want independently powered devices connected in this way. It'll work like it should, but the second you power off either of the devices, then the other will start backfeeding power to it through the data lines. Ouch! So I did the a 70s fix by adding line buffers, and then only enabling them once both sides have been properly powered up.

**NB!** Note, however, that with a Commodore 128 you will not be able to utilize UP9600-wiring for speeds above 1200 baud. That's a limitation of the machine in combination with this specific communication method, and not the adapter itself. See [Getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started_c64.md#21-up9600) guide for the Commodore 64/128, in particular, for more information. 


- [1> Building the adapter](#1-building-the-adapter)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Testing it out](#12-testing-it-out)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)


# 1> Building the adapter
Building an adapter such as this assumes you have at least minor experience soldering things together, but it is recommended that you at the very least have access to a soldering station with adjustable temperature. If it's legally available where you live, consider using 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

Now that you've arrived at *concepts of a plan* for what you want to build, we can get started on one of the more expensive steps in any build process - shopping! For reference, the most expensive step is probably setting your desk and/or house on fire so don't drink and solder. Anyway, when ready to continue with the whole shopping thing that you've heard so much about - head on over to the [BOM](#3-bom)-section. There you'll find *mostly* accurate information on the kind of components that you'll need.

While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there personally. So what I do, is to make due with what I can find on sites such as eBay, AliExpress or any other future site that will inevitably seem to sell the same, and quite possibly identical set of cheap Chinese components. It keeps cost to a minimum, but the downside is that I can't link to a part directly and expect it to stay listed tomorrow. For that reason you'll need to consider their descriptions as mere *suggested search terms* and not *part numbers* in any accurate sense of the definition.

## 1.1> Soldering it together
Soldering the device together should be a fairly straight-forward affair, just take your time and work your way through the described process before actually attempting to do so. There are some important components that absolutely need to be installed in their correct orientation, and from experience I can tell you that it is significantly easier to do it right in the first place, than it is to try and desolder something before trying again.

![Build 002](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/002.jpg)

I usually recommend starting the process by having a good look at the PCBs, try to figure out where all of the listed components should go and in which orientation they go in. I will usually try to install components in the order of their physical size, meaning that you'll have an easier time in order to keep everything from looking somewhat *wonky*. Anyway, this is ultimately your board, your build and you want it perfect, don't you? If you said no, then go sit in the corner because I worked hard on creating this. Mainly for myself, but it's also here for whoever wants to build one later.

![Build 003](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/003.jpg)

First step though, is to install resistors. While most of them should be installed with the values as specified, the ones marked 2k2 (2200) Ohm may need some adjustment based on the type of LEDs that you'll be installing later. If you have a modern clear LED you'll want a higher value, if you have the cheaper dyed ones then you want something lower. There are [online calculators](https://ledcalculator.net/#p=3&v=1.8&c=20&n=1&o=w) that will tell you what you need, or you can *roll that dice* and hope for a comfortable result.

![Build 004](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/004.jpg)

The next step is diodes, and there are a couple of types that have been installed at this point. The first type to deal with is the two *1N5819 Schottky* diodes at the far right, these have a black body and a silver stripe that needs to be matched up in the orientation as indicated by the white band on the illustration (these "point" towards each other).

The others are *1N4731A Zener* (alternatively *1N4730A*) diodes, these work a bit different from how we mortal Arduino-tinkerers think of diodes - they were defined to "break" down beyond a certain voltage. Not *"break down"* as in broken, it means that they will start conducting in the other direction above it. This effect is used by the circuit so that we can reliably detect the presence of power from the *BulkyModem* as well as ensuring that the Commodore 64/128 is sufficiently powered on. Is that a good way of doing things? I don't know, it's my first time trying to use the component in a circuit.

![Build 005](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/005.jpg)

Sockets should be installed for the single IC needed to build the adapter. While you could possibly manage without using a socket, they're cheap and you could probably afford not to be quite as cheap. To install I usually solder opposing corners into place, then reheat and push flush against the board before soldering the remaining pins. Note the indent that would indicate pin 1, the silkscreen on your PCB should have something similar on it that you will need to match it up to.

![Build 006](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/006.jpg)

As for my next component of choice, I went with the 100nF capacitor next to the IC. While I did add some provision for an electrolytic at *C2*, in the end I chose not to install it. As for the LEDs that we've in part discussed at some point in the past, mostly in relation to the resistors limiting their brightness. As for their installation, one of their legs will be longer than the other - and that's the one to put into the round pad. I know that the function of each leg implies a more exact name for them, I'm not going to put something I can't even remember myself. Cathode? Anode? One of those two. Just pick the longer one.

![Build 007](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/007.jpg)
![Build 008](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/008.jpg)

Two transistors are needed, both are *2N3904 NPN transistors*. The kind I'm using has straight legs. but my PCB takes the wider kind with bent legs because those are easier to install. I could try and buy those from somewhere that sells them, or I could keep buying the significantly cheaper ones and just bend the outer legs slightly outwards before showing them into place. They tend to rotate slightly, but should work nonetheless. What you do, however, need to make sure is that they go in the right way. For that you need to observe that it has a flat side with the label printed on it, that needs to be matched with the flat side on the PCB. Put them in the wrong around for a tiny one-time-use smoke machine that will never do any of the things that you want them to.

![Build 009](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/009.jpg)

I've gone ahead and added the straight pin headers for the *UP9600-enable* jumpers. Use some blu-tac to avoid burning your fingers, but if you don't have some around you *could* try to hold onto the pin you're not soldering and get that in straight. The latter method is mostly guaranteed to burn your fingers, but at least you were "sufficiently" warned. The IDC-socket at the top could be substituted by standard pin headers if you need to, but I like using them in order to avoid accidentally plugging in the cable the wrong way around.

![Build 010](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/010.jpg)

The next one is a standard 805 card edge-connector, they come in a couple of variants - one that has a thin pin intended for inserting into a PCB, the other has wider pins suitable for soldering onto wires. Both will work though I prefer the latter as the pins seem somewhat stronger. What we need to do in order to install it, however, is to not start soldering things right away - instead we need to break out that secret stash of M3 screws and nuts that you've been hiding. Preferably I'd tell you to use those made out of nylon as you can easily cut a screw down to size, at least without digging out a hacksaw and quite possibly look in the garage for a table vice.

Anyway, what we need to do is to cut two screws down to size so that they fit through the blue connector  without bottoming out in the cutouts found on your PCB. Said cutout should fit the flat edge of a nylon M3-nut, so just put one in there and start screwing things up. Somewhat tightly as it is nylon after all, try again if that's what you've just done.

With the screws mostly holding the connector into place, the pins themselves will float somewhat above the PCB-surface on both sides. What I like to do at this point, is to take a small flat-edged screwdriver and press it down on the middle of the pin so that it bends down and the end of it *mostly* touches the solder pads. I say "mostly" because it's never perfectly flat, it's just the best I can manage. Solder one of the pins, check against the alignment of the same on the other side of the PCB to see if you need to adjust things slightly. When happy with your choice of hobbies, do the opposing edge in the same manner before soldering all the remaining pins on both sides.

![Build 011](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/011.jpg)

The final step is just to insert the single IC, it has an indent on it shat should match the one found on the socket we've already installed at a previous point in this guide. As for the jumpers I've just put them on there so that I don't loose them, in this position they are only sitting on a single pin.

## 1.2> Testing it out
The jumpers mentioned earlier are for using *UP9600*-mode on a Commodore 64 with software that explicitly supports it, some even require that you configure this mode without it connected at the time. As for on a Commodore 128 this mode is not supported at all, so should either remove them entirely or leave them in the horizontal position as shown earlier.  For more information about UP9600, see [Getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started_c64.md#21-up9600) guide for the Commodore 64/128.

As for testing out the adapter, I advise that you first test it with only the *BulkyModem*, alternatively *BulkyModem-32*, connected to it. If something is going to blow up, better that it do so when not connected to vintage and quite possibly precious hardware. The LED marked *PWR* should light up, but without the Commodore 64 present and powered up - the *EN* LED should not turn on.

![Build 015](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/adapter/015.jpg)

Plugging it into a Commodore 64/128 may take some considerable force, the connector is brand new and may have been 40 years since you last encountered a new one. With the cable and everything in place you should not be able to comfortably insert it upside down, but in case you need me to paint you a picture - there's one above. If you find it hard to remove again later, don't pull on the components themselves. Instead you should either grab the sides firmly, or put a loop of cable into the holes on it - and pull on that.

**NB!** Never plug or unplug anything with power running to it, even if it is just on the other side of the cable. Vintage hardware may have survived things quite a lot of things 40 years ago, but they were new back then - now they're not.


# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs. Most if not all fabrication companies will expect Gerber-files, these are generated from KiCAD though you will be able to bypass this step by using PCBway shared projects. As for the schematic, one has been provided for you in [PDF-format](https://github.com/tebl/BulkyModem/tree/main/documentation/schematic) - an important source of information when things inevitably fail to work as advertised.


# 3> BOM
Most parts should be easy to get a hold of from your favorite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery).

| Reference             | Item                                                                    | Count | Order  |
| --------------------- | ----------------------------------------------------------------------- | ----- | ------ |
| Panel PCB             | Fabricate using Gerber files                                            |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyModem_Commodore_64_128_UserPort_Adapter_a84c7ef6.html)
| C1                    | 100nF capacitor (5mm pin spacing, or 1uF electrolytic (2mm pin spacing) |     1 |
| C2                    | Not needed.                                                             |     0 |
| D1,D4                 | 1N4731A Zener diode (DO-41)                                             |     2 |
| D2,D3 *1              | 3mm LED                                                                 |     1 |
| D5,D6			        | 1N5819 Schottky diode (DO-41)                                           |     2 |
| J1                    | 2x12 pin, 3.96mm 805 series card edge connector                         |     1 |
| J3                    | 2x8 pin, 2.54mm IDC male box header connector                           |     1 |
| JP1,JP2               | 1x2 pin, 2.54mm straight pin header (with jumper cap)                   |     2 |
| Q1,Q2                 | 2N3904 NPN transistor (TO-92)                                           |     2 |
| R1,R4,R6              | 10k ohm resistor                                                        |     3 |
| R2,R5                 | 1k ohm resistor                                                         |     2 |
| R3,R7 *1              | 2k2 (2200) ohm resistor                                                 |     2 |
| U1                    | 74HCT244 (DIP-20)                                                       |     1 |
| Mounting *2           | M3x15mm nylon screws (or longer, cut to size)                           |     2 |
| Mounting *2           | M3 nylon nuts                                                           |     2 |

1) I highly recommend using frosted LEDs, but if you can only find clear ones then you could always frost them a bit yourself using sandpaper or some sort of polishing tool. Do note that some resistors need to be adjusted based on type of LED used. For a modern LED the suggested value may work, but you may need to adjust for the colour. For anything ancient, or extremely cheap, you may need a lower value. 
2) These are often sold in kits, but you usually also find bags of each on the usual sites. Nylon is strong enough for my purposes while easy enough to cut down to a suitable size.