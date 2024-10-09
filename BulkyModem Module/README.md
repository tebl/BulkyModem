# BulkyModem
This it it! This is the project that defined this repository! Confusingly having the same name, in a repository that to this date includes several other devices that do the same thing subtly different ways. As all of them, it's a modem for vintage computers. And if you want more details about what this is really about, check out the [root of this repository](https://github.com/tebl/BulkyModem) before continuing.

![BulkyModem](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/041.jpg)
![Naked BulkyModem](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/040.jpg)

The *BulkyModem* is based on [Zimodem](https://github.com/bozimmerman/Zimodem), a device that is commonly built in one of two variants: one more general communications device that communicates over RS-232, the second one is a device that connects directly to the *User Port* on a Commodore 64. I don't know about you, but if you were to take a hard look at the things in my basement then you'd find more vintage computers than what my wife probably think that I have (fiercely protected by a rabid dog, claymores etc). Long story short; I have several that fit into either category. So I didn't want to choose one, when I could simply ~~walk into Mordor~~ make one that would be able to work with either. In the hardest way possible by doing it in hardware, at least compared to just forking my own version of the firmware (that would never be able to keep up to date). At its core is your local garden-variety of ESP8266 development boards, sold in all the regular affordable prices as the NodeMCU version 2 or 3.

**NB!** There is also such a thing as the *BulkyModem-32*, where the "32" indicates that it is instead based on common ESP-32 development boards. It has the same features as this one, including a few *extra* ones though nothing that you'd miss if you weren't already aware of their existence. That variant comes with its own set of [documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Module), and while you're welcome to keep reading below this point - you'll need to read those when building it instead.

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Putting up a front](#12-putting-up-a-front)
  - [1.3> Integrating circuitry](#13-integrating-circuitry)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, my recommendation is that you at the very least have access to a soldering station with a digital temperature adjustment. If such a thing can be considered commercially available where you live, then you should consider starting with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With requirements for basic equipment sorted, we need to talk a bit about what you want to achieve while building this project. The reason I ask is that while you can build a functional *BulkyModem* using this single PCB by itself, you can also choose to build the complete version of it - including front panels, faceplates and a whole lot of components intended to make it work and look the way I wanted it to. I won't be covering the task of building cheaper or custom versions of it in any great detail, mostly because the concept of the *BulkyModem* is that it shouldn't end up looking like a science experiment. Look into the ["Mini"-variants](https://github.com/tebl/BulkyModem/blob/main/README.md#1-modules) if you just want something that is smaller, or significantly cheaper.

Now that you know have *concepts of a plan* for what you want to build, we can get started on one of the more expensive steps in any build process - shopping! For reference, the most expensive step is probably setting your desk and/or house on fire. Don't be one of those guys! Anyway, when ready to perform the whole shopping thing - head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. While I would have liked to give you specific part numbers for "reputable" electronic part suppliers, I can't afford to shop there. So what I do is to make due with what I can find on sites such as ebay, AliExpress or any other similar sites that seem to sell the same, and quite possibly identical, set of cheap Chinese components. The downside is that I can't link to a part directly and expect it to stay listed tomorrow, so you'll need to consider the description listed more in the category of *suggested search terms* and not *part numbers* in any sense of the definition.

## 1.1> Soldering it together
Soldering the device together should be a fairly straight-forward affair, just take your time and work your way through the described process before actually attempting to do so. There are some important components that absolutely need to be installed in their correct orientation, and from experience I can tell you that it is significantly easier to do it right in the first place, than it is to desolder and try again.

As mentioned in not so many words, there are options for living without a front panel by skipping out on components components that could be installed on this PCB for the cheaper option. Contrary to what one might first come to assume is that when you want to build the complete version of the *BulkyModem*, then you will want to leave out the positions for 3mm LEDs found at the bottom of your PCB.

![Build 001](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/001.jpg)

I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (all of this should be clearly marked on the silkscreen). I will usually try to install components in the order of their physical size, meaning that you'll have an easier time trying to keep everything from looking somewhat *wonky*. This is ultimately your board, your build and you want it perfect, don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 002](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/002.jpg)

As for the first step we've actually not installed any components, we've simply taken the step of soldering all of the little solder bridges that are required in order to make it work. While there may be an actual reason for why they're still here, but I didn't want to do a whole revision of the design just to have them hardwired into place. Check out the schematic for what could be considered significantly more informative (the little triangle denotes pin 1), at least beyond explicitly telling you to set them **exactly** like the picture above. While the pads themselves are quite small, they're usually harder to short than you might expect. Just add solder to it then keep dabbing it with your iron until they look right. Measure with a multimeter if you're unsure about the quality of your handiwork.

**NB!** There's a solder bridge on the reverse-side of the PCB, directly below U4. This need to be linked, **only** if you don't intend on installing a chip into the socket. Likewise, a similar solder bridge for bypassing the relay at *K1* also exists though I couldn't possibly imagine not taking the oppurtunity to install a relay. Because relays are cool!

![Build 003](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/003.jpg)

Here we've started by soldering all of the resistors, ensuring that we're using the correct values in each position. I also forgot one of them, just mentioning that in case you're confused by the apparent cognitive dissonance. R18 isn't an accident, and should not be installed. Considering that you will need to size the value of the resistor going to each of the LEDs, installed either here or on a front panel - then you'll need to do a bit of [math](https://ledcalculator.net/). This is mostly due to the colour and design of the LEDs, but to keep things manageable - all of them will be marked 2k2 and later revisions of the PCB also includes a description of what they are used for. If it just has a value, then install that value. 

![Build 004](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/004.jpg)

Next step is to add a couple of 1N4148 small signal diodes, making sure that the black band of the components matches up with the corresponding markings on your PCB. In the power section there's also a 1N5819 Schottky diode, it looks a bit different though the installation method is the same except that the band on this one is silver or grey. None of it will work if you put those in the wrong way.

![Build 005](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/005.jpg)

Sockets should be installed for the ICs needed for the completed unit. While you could possibly manage without them, they're cheap and you could probably afford to be quite as *cheap*.  To install I usually solder opposing corners into place, then reheat and push flush against the board before soldering the remaining pins. Note the indent that would indicate *pin 1*, the silkscreen on your PCB should have something similar on that you need to match it up to.

![Build 006](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/006.jpg)

We've also gone ahead and installed our non-polarized capacitors, these have a 5mm pin spacing and could be the old type of ceramic disc capacitors. Or the funky yellow monolithic capacitors as shown, mostly because I prefer the way they look - and the blue ones are on the more expensive side of things (not that I know of any relevant difference between them).

![Build 009](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/009.jpg)

The next step *might* involve a whole lot of the same, populating the four spots below both U3 and U4. If the chips that you've bought to populate those sockets, is the recommended MAX232**A** variant of the chips then these are the same components. If on the other hand, you've received the older *MAX232* (no letter behind name) or the cheaper MAX232**C** variants then you will need to install polarized electrolytic capacitors. There are provisions for both options, but the combination **need** to match up with one another. Polarized means that it should only be installed in the correct orientation, the standard is that you need to match up the stripe on the casing with that of the filled-in white area of your PCB.

![Build 010](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/010.jpg)

At this point I've gone ahead and installed the single LED that I want on the completed unit, as for how it is installed - the longer component lead goes into the round hole and not the square one. If you just had a flashback to some time ago, you either have small kids or an impressive memory! Speaking of memory, I've mentioned earlier that when installing a front panel you don't want to install any LEDs towards the bottom of your PCB.

![Build 011](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/011.jpg)
![NodeMCU-versions](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/esp8266.jpg)

Then we just need to add some pin headers, mainly those in the upper-right quadrant. As for the female pin headers used for the NodeMCU footprint, we're installing three rows of them to account for the physical differences between commonly available versions of it. While they're somewhat unofficially being referenced to as version 2 and 3, one is physically larger than the other. If you can't find 15-pin female header pins, just find some longer ones and cut them down to size with some judicial application of your pliers. Might look a bit rough, but noone will know unless you explicitly tell people that you're *doing* it. The IDC-socket at the top could be replaced by using standard pin-headers, but it it's there to make it harder for someone to insert the cable the wrong way around.

**NB!** If your development boards don't come with male pin-headers already soldered onto them, use a sacrificial extra PCB to hold the pins straight when soldering them into place. A cheap breadboard is also an option that people seem to recommend, but doing it my way ensures that they're always aligned perfectly!

![Build 012](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/012.jpg)

The right-angle switch added is mostly just duplicating one of the switches found on your development board, so feel free to skip it until I've found out what I was supposed to use it for. For the most part though, it's just a button that's easier to access once the top cover has been installed.

![Build 013](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/013.jpg)

Skipping ahead we've started tinkering with the power section again, mostly by adding the common DC barrel connector (5.5mm x 2.1mm). These are quite notorious for going in crooked so make sure to only solder one pin to get started, then reheat and adjust until perfectly satisfied with your results before soldering in the remaining pins. We've already discussed installing a polarized capacitor, but: white stripe, white area, for mostly no boom! The HK19F-relay (5v variant should be used) has rougly the same indent as found on ICs, so you should easily identify the correct orientation. These are notorious for being stuffed into a plastic bag, jammed into an envelope, and then finally being stomped upon with a workboot - so expect to spend just a little bit of time straightening its legs. 

![Build 015](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/015.jpg)

The *RS-232* side of things requires what's usually labelled as a female right-angle DB9-connector. Say that three times in front of the bathroom mirror in order to have anyone currently living with you, start questioning your sanity. As for the connector itself, this board was designed to fit the component found on sale from Chinese component vendors (most likely a cloned or rebadged version of the RND-branded connectors). As this is specifically the *DCE*-side of a RS-232 communication setup, then the connector should be the female variety for compatibility with *most* vintage computers.

## 1.2> Putting up a front
While actually constructing a suitable front panel is covered in its own entirely separate set of [documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel), we should probably cover the process of actually installing it here. However, before we can do all that we need to introduce one of my most used components over the previous decade. Probably resistors now that I actually think about it, but this is the decade of not letting alternative *facts* get in the way of good old-fashioned lies; the component I'm supposed to say something about, is the nylon "hex" standoffs found in each of the corners as shown below. 

![Build 016](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/016.jpg)

For such an innocuous component that should be easy to plop into place, just inserting some nuts on the bottom and be done with it - right? Not so fast there, buddy! You see, I engineered it so that the two at the front needs to be carefully aligned in order to allow the installation of the front panel somewhere beyond this point. It has six sides, and we need to ensure that it is oriented so that it is flush with the left and right outside edges of the PCB. It'll make sense later, I promise!

![Build 020](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/020.jpg)

And through the magic of a text-based time-jump we've skipped the [assembly of the front panel](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel). What's currently available on our desk at this point in time, should for the most part appear as can be seen above (ignore faceplate differences as those are mainly just styling). As for the trick with the alignment of the "hex" standoffs as described, both here and when assembling the front panel means that the front panel can slide into place without anything getting in our way. If this still don't make sense, look at the picture below in order to observe how the two should - **eventually** - manage to fit together.

![Build 021](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/021.jpg)

**NB!** While I've just told you to look at this completed assembly, don't forge ahead by soldering anything into place. Not just yet at least!

![Build 022](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/022.jpg)

With the front panel slid into place, the PCBs should slot together quite nicely, and there shouldn't be much of a gap between the two. If you do however find that there's a significant gap, then the likely culprit might be in the production of the PCBs themselves. Not that they're poor, because the fact that we can get a set of PCBs for as low as $2 is simply awe-inspiring - there's simply a limit on how sharp a 90 degree angle can be created when the thing creating the angle is a spinning drill-bit. If this is something you're encountering, then take use a metal file on the corners of the little tabs on the front panel PCB. There are no tracks there so you won't mess anything up, but maybe leave the power tools out of the equation. With that covered, just plop the top cover into place with some temporary standoffs (because they're easy to add and remove by hand). 

![Build 023](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/023.jpg)

Flipping the whole thing over onto its back, we can finally start soldering again. If you've had your soldering iron on for the entire time that you've spent reading my meanderings, then I'm sorry... please accept this free repository full of retro goodness as a way to make it up to you for the apparent loss of power efficiency! With all of my recent ramblings about alignment and so on, you might be worried when doing all of this, but that's exactly the reason why we've already taken precautions to ensure that this won't be an issue by temporarily installing the top faceplate.

![Build 024](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/024.jpg)

And with that, the last of the soldering have been concluded! Any accidental shorts will only show up once you've turned it off, that's just how *The Matrix* has been coded (that's a joke for anyone old/young enough to remember the 90s).

## 1.3> Integrating circuitry
As for adding integrated circuits, mainly just chips of the non-starchy kind, its just a matter of matching up the indentation with that of the sockets that we've hopefully installed sometime earlier. Probably yeasterday, but that's just guesswork. A pin straightener will make things easier though a pair of pliers will help you achieve the same thing, just without the same level of visual flair.

![Build 025](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/025.jpg)

And that's all of them installed in their current place. While the chips should be easy to get hold of, the plague of our current no-consequence shopping experience is that a lot of it will be reclaimed or counterfeit chips that will have had a new label printed onto the top of it. Giving inadequately paid people the benefit of doubt, is that the parts will have been roughly sorted into seemingly identical buckets before applying said label. Sometimes that means that completely incompatible technologies have been labelled identically, and we're left to guess why a circuit doesn't work as advertised. If you received a bag of 10, then half of those are more than likely trash. The rest are still a good deal, you just need to swap between them until you find a combination that works (nothing that's considered working should get more than luke-warm to the touch).

![Build 026](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/026.jpg)

As for the brains of the operation, who knows what kind of software have previously been written to it? Probably what we insufferable Arduino-addicts refer to as a "blink"-sketch, but you never know until you actually plug it in. So before you plug it in, make sure to get the applicable [Zimodem](https://github.com/bozimmerman/Zimodem)-firmware onto it before actually plugging it in like shown above. As doing that is a whole other adventure by itself, I've put together my own guide on how anyone with a very particular set of interests can go about actually [setting it up](https://github.com/tebl/BulkyModem/blob/main/documentation/setting_it_up.md). Do that. Then plug it in. Just *don't* do it with any kind of accidental pin-offsets.

## 1.4> Keeping up with the Commodore
Keeping up with the Commodore 64, albeit dragging it kicking and screaming into requirements of the current century requires a suitable adapter. Specifically the one included with this project, helpfully documented with its own entirely different set of [documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20UserPort%20Adapter) describing its assembly process. It connects to the main body of the *BulkyModem* using commonly available cables, usually labelled as a *16-pin IDC cable* - quite possibly with the word *JTAG* there as well (for some reason). This is what it looks like when in use:

![User Port Adapter](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/adapter/015.jpg)

Why is this needed? As the modem is an independently powered device from that of the Commodore 64, we effectively have what can electrically be considered as separate power domains with a cable connecting the two. Except... any connected signal is also a source of power. Leading to somewhat scary issues, such as when a data signal from your C64s crusty old CIA-chip starts attempting to power up the modem - or vice versa. The classic solution to this problem is to only enable communications when both sides can be considered suitably alive, so that's what we're doing here in what's probably a very 1970s way.

## 1.5> Finishing touches
![BulkyModem](https://raw.githubusercontent.com/tebl/BulkyModem/refs/heads/main/gallery/build/module/041.jpg)

As for finishing touches, it's can be summed up as taking steps towards attaching the top faceplate. Again. But this time you're using *proper* screws. As for where you should go from here, the exciting world of the BBS-es is probably one of them. For something more specific, see:

- [Setting it up](https://github.com/tebl/BulkyModem/blob/main/documentation/setting_it_up.md)
- [Getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md)

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs. Most if not all fabrication companies will expect Gerber-files, these are generated from KiCAD though you will be able to bypass this step by using PCBway shared projects. As for the schematic, one has been provided for you in [PDF-format](https://github.com/tebl/BulkyModem/tree/main/documentation/schematic) - an important source of information when things inevitably fail to work as advertised.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything used is whatever I could get cheapest from eBay/AliExpress ( sometimes free shipping, but plan on waiting 3-4 weeks for delivery). While there are options for building a slightly cheaper version of the *BulkyModem* by forgoing some parts as you see fit based on analyzing the relevant circuit, I'm mostly going to assume that you're looking at this page in order to build the complete version of the *BulkyModem* - because that's the point of it in the first place. Components listed in parenthesis can be considered duplicates of those found on the front panel, but when in doubt I've added descriptions where relevant.

**NB!** Note, however, that the following table only includes components required for assembling the main PCB by itself. Those required by the [front panel](https://github.com/tebl/BulkyModem/blob/main/BulkyModem%20Module%20Panel/README.md#3-bom) and [Commodore 64 User Port Adapter](https://github.com/tebl/BulkyModem/blob/main/BulkyModem%20UserPort%20Adapter/README.md#3-bom) are not included in this list, so make sure to browse around.  

| Reference                        | Item                                                                    | Count | Order  |
| -------------------------------- | ----------------------------------------------------------------------- | ----- | ------ |
| Faceplate PCB                    | Fabricate using Gerber files                                            |     1 | PCBWay
| A1                               | ESP8266 development board                                               |     1 |
| C1                               | 470uF electrolytic capacitor (3.5mm pin spacing)                        |     1 |
| C2-C5,C12-C15 *1                 | 100nF capacitor (5mm pin spacing, or 1uF electrolytic (2mm pin spacing) |     8 |
| C6-C8,C17-C19	                   | 100nF capacitor (5mm pin spacing)                                       |     6 |
| D1,D14                           | 1N4148N small signal diode (DO-35)                                      |     2 |
| D3-D10 *2                        | 3mm LED                                                                 |    (8)|
| D11			                   | 1N5819 Schottky diode (DO-41)                                           |     1 |
| J1                               | 2.1mm x 5.5mm barrel plug                                               |     1 |
| J2                               | Right-angle female DB9 connector (PCB mount)                            |     1 |
| JP1,JP7 *3                       | 1x2 straight pin header, with jumper cap                                |    (2)|
| K1                               | HK19F-DC 5V-relay                                                       |     1 |
| R1-R4,R8,R10-R12,R14-R16,R25 *4  | 2k2 (2200) ohm resistor                                                 |    11 |
| R17                              | 2k ohm resistor                                                         |     1 |
| R19                              | 1k ohm resistor                                                         |     1 |
| R21                              | 10k ohm resistor                                                        |     1 |
| SW1                              | 6x6x5mm right-angle momentary button                                    |    (1)|
| U1                               | 74HCT244 (DIP-20)                                                       |     1 |
| U2,U5                            | 74HCT04 (DIP-14)                                                        |     2 |
| U3                               | MAX232 (DIP-16), preferably MAX232A                                     |     1 |
| U4 *5                            | MAX232 (DIP-16), preferably MAX232A                                     |    (1)|
| U6                               | 74HCT32 (DIP-14)                                                        |     1 |
| Mounting *6                      | Nylon M3 hex standoffs 20mm (M-F)                                       |     4 |
| Mounting *6                      | Nylon M3x6mm nylon screws                                               |     4 |
| Mounting *6                      | Nylon M3x6mm nylon nuts                                                 |     4 |

1) You need to install 1uF electrolytic capacitors in these positions if you're using one of the cheaper MAX232-variants, most likely marked MAX232**C** or without any letters at all. If you have one that's marked MAX232**A**, then you need to install 100nF capacitors here instead. If there are more letters listed in the name, just look at the first one and ignore the rest.
2) These are indicator LEDs, you can skip the installation of these if either don't want them - or - you're building the BulkyModem with a front panel. Also see *4 for correct sizing of associated resistors.
3) These are mostly only needed when you're not installing a front panel, if you were planning on installing the board into some other case then this is also a reasonable place to connect latching switches.
4) Indicator LEDs, regardless of whether you're installed them here or on the front panel, you'll need a suitably sized resistor in order to avoid blinding yourself and/or causing the LED itself to quickly burn out. Different types, in particular the colour it produces greatly affects the value required. If you're somehow feeling lucky by this point, go for a 1k for a dyed LED (you can tell the colour by looking at it in the bag) or the 2k2 suggested for anything else. Then swap out until you feel happy with your life choices.
5) The second MAX232-chip at U4 can be skipped if you do not need the signals provided by it - DCD (Data Carrier Detect) and RI (Ring Indicator). This is simply a cost-cutting measure as the chips themselves are now considered obsolete, doing so will require that you link the *BYPASS* pads on the back of the PCB.
6) These are available in the form of kits usually advertised *M3 nylon standoff kit* which should contain most of what you'd need. I do however recommend that you pick up extra M-F standoffs of lengths 10mm and 20mm, as quite a lot of them will be used when building more than one module. Add some screws and nuts while you're at it.