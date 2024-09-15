# BulkyModem
Back in the old days I, like many others, had a modem. Wasn't old enough that it used an acoustic coupler, but certainly old enough to make exciting clicks when connecting up to things. It also made a lot of horrible shrieking noises when succesfully making a call, if someone else picked up a phone while you were using it - you'd also get the joy of doing it all over again. The *BulkyModem* doesn't do all of those things, but it does allow me to have a go at dialling a *BBS* from my old PC again. It doesn't do that over an analog phone line, because: A) Those no longer exist, and B) We're living in the far distant future, meaning we now have Wi-Fi!

![BulkyModem](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/20240628_021238.jpg)

While there are many options for modems out there that already do the same, even a whole bunch of them being hand-assembled and sold as *Retro WiFi modems* in most corners of the world. Because everywhere that you can find an aging *nerd* tinkering away on their old computer, there's probably a modem already in their workshop, or possibly in the mail somewhere. So where does my little project fit into all of this? Not sure, but I wanted to build one and the solution I came up with, fits a very specific spot on my desk.

Where does this one differentiate from the rest then? For that I need to say a bit about my goals when developing it. First off, I wanted to merge old technology with the new - that's not a shocker to anyone who has seen any of my other projects. The second is where this might become interesting to you, and that's the part where I didn't want to build a modem that would only ever work over either *RS-232* or attached to a *Commodore 64/128 User Port*. Instead of forcing you to choose, I put a *mode*-button on the front that rewires things between the two modes. Implemented in *hardware*!

That's madness, I hear you say. Well - it certainly is.

Which is probably the reason for why I started this project when these retro modems were a new thing, except I could never get all of that to work at the same time. It was never supposed to work while connected to different systems at the same time, that would be a whole different bag of crazy - I just wanted the mode-button to work as advertised. And two years later it mostly does. It just turns out that juggling chronic fatigue, *RS-232* signal names and a screaming toddler all at the same time, means that you are bound to strike out a few times. The last stumbling block was that I had one ESP8266 development boards that worked perfectly, and five that mostly did nothing. In the end I had five that worked with the addition of a simple diode, which is probably the reason why many recommend not using those pins on these development boards. There's still the one that never worked, but for now that seems to align with my batting average for cheap development boards.

As for going all the way in order to not require any changes to the firmware, I later did add some *optional* features that may at some point require an update to the firmware. We'll burn that bridge if I ever get around to crossing it, but for now - let's just assume that those don't exist. 

For the project background, all of this started with an article: [Build your own 9600 Baud C64 WiFi Modem For $10](https://1200baud.wordpress.com/2017/03/04/build-your-own-9600-baud-c64-wifi-modem-for-20/). It goes through all of the steps for building a simple version of this with a specially prepared version of the [Zimodem](https://github.com/bozimmerman/Zimodem)-firmware that was made available when the article was written. For a new project that sounds more outdated than retro, I'm going with the shiny new version instead.

- [1> Modules](#1-modules)
  - [1.1> BulkyModem](#11-bulkymodem)
  - [1.3> BulkyModem-32](#13-bulkymodem-32)
  - [1.4> BulkyModem-32 (Mini RS-232)](#14-bulkymodem-32-mini-rs-232)
  - [1.5> BulkyModem Terminal](#15-bulkymodem-terminal)
- [2> Adapters](#2-adapters)
- [3> Acknowledgements](#3-acknowledgements)


# 1> Modules
For the technical details as well as information regarding the devices included in this specific github project, consult the table below to jump to that particular section. Note that in order to successfully use this along with a Commodore 64, you also need the *User Port*-adapter found in the [adapters](#2-adapters)-section.

| Module                             | Description                                      |
| ---------------------------------- | ------------------------------------------------ | 
| [BulkyModem](#11-bulkymodem)       | *BulkyModem*-variant based on ESP8266.
| [BulkyModem-32](#13-bulkymodem-32) | *BulkyModem*-variant based on ESP32.
| [BulkyModem-32 (Mini RS-232)](#14-bulkymodem-32-mini-rs-232) | "Mini"-version of the BulkyModem-32 with an RS-232 interface.
| [BulkyModem Terminal](#15-bulkymodem-terminal) | An instant-on video terminal based on [VersaTerm](https://github.com/dhansel/VersaTerm)

## 1.1> BulkyModem
![BulkyModem](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/20240629_234654.jpg)
**Status:** Documentation missing

This is the main module of the project, if you came here looking to build an ESP8266-based retro modem then you've come to the right place. You have the option of going the cheaper route of just building things up on the basic module by itself, consisting only of the main module and nothing else. Alternatively, and this is probably the only reason to build a *BulkyModem* - and that's to build the whole thing as shown above. Note that the list below will include alternate versions of boards, so you need to decide which of them you'll need based on their description.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [BulkyModem](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module/README.md#3-bom), [Setting it up](https://github.com/tebl/BulkyModem/blob/main/documentation/setting_it_up.md), [Getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md) | PCBWay
| [BulkyModem Panel](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel) | Recommended | Adds a vertical surface for mounting switches and LEDs. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel/README.md#3-bom) | PCBWay
| :repeat_one: [BulkyModem Panel B](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel%20B) | Alternative | Similar to above, but uses an RGB LED as a power indicator. Lights up a different colour when in *standby*. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel%20B), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel%20B/README.md#3-bom) | PCBWay
| [BulkyModem Front faceplate (FP3)](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP2) | Recommended | Decorative front panel, mounts on either of the front panels. Has a more futuristic design. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP3) | PCBWay
| :repeat_one: [BulkyModem Front faceplate (FP2)](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP2) | Alternative | Decorative front panel, mounts on either of the front panels. Has a more minimalistic design. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP2) | PCBWay
| [BulkyModem Top/bottom faceplate (FA1)](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FA1) | Recommended | Decorative faceplate used on the top of the device, can also be used on the bottom in combination with front faceplate [FP3](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP3). | [Documentation](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FA1) | PCBWay

**NB!** Make sure to follow the links for each of the modules, especially when you're looking into ordering the parts needed to complete the device that you want to build. Those modules are listed with their own link to a BOM, or at least what I would call one. Also keep in mind that to use this with a Commodore 64, you need the *User Port*-adapter that's found in the [adapters](#2-adapters)-section.


## 1.3> BulkyModem-32
![BulkyModem](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/20240629_234654.jpg)
**Status:** Documentation missing

The *BulkyModem-32* is a variant of the modem based on the ESP32, offering some additional features when compared to the [BulkyModem](#11-bulkymodem) that was based on the older and more limited ESP8266. More specifically you'll have access to several additional commands and protocols when using this variant, it also includes an SD-card slot so that you can transfer files between the computer and the modem.

For the build you have the option of going the cheaper route of just building things up on the basic module by itself, consisting only of the main module and nothing else. Alternatively, and this is probably the only reason to build a *BulkyModem* - and that's to build the whole thing as shown above. There will be alternate versions of boards, so you need to decide which of them you'll need based on their description.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [BulkyModem-32](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Module) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Module), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Module/README.md#3-bom), [Setting it up](https://github.com/tebl/BulkyModem/blob/main/documentation/setting_it_up.md), [Getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md) | PCBWay
| [BulkyModem Panel](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel) | Recommended | Adds a vertical surface for mounting switches and LEDs. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel/README.md#3-bom) | PCBWay
| :repeat_one: [BulkyModem Panel B](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel%20B) | Alternative | Similar to above, but uses an RGB LED as a power indicator. Lights up a different colour when in *standby*. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel%20B), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module%20Panel%20B/README.md#3-bom) | PCBWay
| [BulkyModem Front faceplate (FP3)](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP2) | Recommended | Decorative front panel, mounts on either of the front panels. Has a more futuristic design. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP3) | PCBWay
| :repeat_one: [BulkyModem Front faceplate (FP2)](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP2) | Alternative | Decorative front panel, mounts on either of the front panels. Has a more minimalistic design. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP2) | PCBWay
| [BulkyModem Top/bottom faceplate (FA1)](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FA1) | Recommended | Decorative faceplate used on the top of the device, can also be used on the bottom in combination with front faceplate [FP3](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FP3). | [Documentation](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20FA1) | PCBWay

**NB!** Make sure to follow the links for each of the modules, especially when you're looking into ordering the parts needed to complete the device that you want to build. Those modules are listed with their own link to a BOM, or at least what I would call one. Also keep in mind that to use this with a Commodore 64, you need the *User Port*-adapter that's found in the [adapters](#2-adapters)-section.


## 1.4> BulkyModem-32 (Mini RS-232)
![BulkyModem-32 (Mini RS-232)](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/20240628_032119.jpg)
**Status:** Completed

Working on the ESP-32 version of the BulkyModem, that's the one called BulkyModem-32, I had quite a few questions of how some of the features were meant to function. So in order to start development in a more sensible place than what I'm known for, I set out to make a smaller "Mini"-version with the core functionality before trying to add anything else to it. The ESP32-version has more functionality available to it in the Zimodem-firmware, that you'll have available to you when hooking it up to your vintage computers over RS-232. The connection is a 5-wire setup, using RTS/CTS as hardware flow control.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [BulkyModem-32 (Mini RS-232)](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Mini) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Mini), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Mini/README.md#3-bom), [Setting it up](https://github.com/tebl/BulkyModem/blob/main/documentation/setting_it_up_mini_rs232.md), [Getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md) | [PCBWay](https://www.pcbway.com/project/shareproject/BulkyModem_32_Mini_RS_232_e6ccfb60.html)


## 1.5> BulkyModem Terminal
![BulkyModem](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/20240808_032922.jpg)
**Status:** Documentation missing

Building a modem comes with its own set of rewards, and in terms of *RS-232* these are what we will define as being *Data Communications Equipment (DCE)*. The other end, normally what we would think of as a computer, is instead labelled as *Data Terminal Equipment (DTE)*. With *RS-232* we have different wires serving different purposes, so one would have different names on each of these two ends - quite possibly being the reason why this kind of information naturally slides off my brain like water off a duck's back. So naturally I wanted to climb that mountain anyway.

So what does it do then? The idea is that instead of having your homebrew computer such as RC2014, RC6502 and similar living inside a terminal emulator program such as PuTTy or Tera Term on your regular computer, you have something that can do the same except without the distractions of the modern computer. Kind of like the original great devices such as the actual DEC VT101, used to hook up to and talk to early mainframes. For sure, I could have used better examples than what mostly amounts to a bunch of computers hooked up to each other, but I was really looking for something that wasn't just a modem. The point is that you hook up your VGA-monitor, your favourite PS/2 keyboard and then you're free to communicate over serial without notifications, updates and all that. Even if you just put a modem on the end, just so that you could chat on a *BBS*.

How did I do all this? I didn't. What I did was discover that someone had already made one called [VersaTerm](https://github.com/dhansel/VersaTerm) based on the Raspberry Pi Pico. Then I removed a wide selection of features in order to make one that would look pretty, as well as fit with the overall design of the *BulkyModem*. If you want the whole thing, check out the original project. You'll need to go there in order to grab the firmware to run on the *BulkyModem Terminal*, so you might as well do it.

For the build you have the option of going the cheaper route of just building things up on the basic module by itself, consisting only of the main module and nothing else. Alternatively, and this is probably the only reason to build a *BulkyModem* - and that's to build the whole thing as shown above. There will be alternate versions of boards, so you need to decide which of them you'll need based on their description.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [BulkyModem Terminal](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Terminal) | Yes | Main module | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Terminal), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Terminal/README.md#3-bom) | PCBWay
| [BulkyModem Terminal Panel](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Terminal%20Panel) | Recommended | Adds a vertical surface for mounting switches and LEDs. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Terminal%20Panel), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Terminal%20Panel/README.md#3-bom) | PCBWay
| [BulkyModem Terminal Front faceplate (FP3)](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20Terminal%20FP3) | Recommended | Decorative front panel, mounts on either of the front panels. Has a more futuristic design. | [Documentation](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20Terminal%20FP3) | PCBWay
| [BulkyModem Terminal Top/bottom faceplate (FA1)](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20Terminal%20FA1) | Recommended | Decorative faceplate used on the top of the device, can also be used on the bottom in combination with front faceplate [Terminal FP3](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20Terminal%20FP3). | [Documentation](https://github.com/tebl/BulkyModem/tree/main/faceplates/BulkyModem%20Terminal%20FA1) | PCBWay

# 2> Adapters
Separate from the main modules are several adapters, designed for use with the *BulkyModem* in combination of various systems. The repository also includes a folder for [schematics](https://github.com/tebl/BulkyModem/tree/main/documentation/schematic) in PDF-format, these will be needed in order to track down any faults you encounter when building up and testing the adapters.

| Module                 | Required    | Description                        | Documentation                      | Order      |
| ---------------------- | ----------- | ---------------------------------- | ---------------------------------- | ---------- |
| [Commodore 64/128 UserPort](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20UserPort%20Adapter) | Recommended | Used to connect with Commodore 64/128 over the User Port | [Documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20UserPort%20Adapter), [BOM](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20UserPort%20Adapter#3-bom) | PCBWay

**NB!** The repository may contain pieces of modules and adapters not excplicitly listed here, if they're not listed then they're a work in progress. Some might be functional, others might blow up something or I simply haven't remembered to update the documentation.


# 3> Acknowledgements
Everything comes from something, in particular when it comes to most of my electronics projects. I mainly build things I would like to own, often doing a respin to fit my own particular style and preferences. The hardest parts of the designs will already have been provided for by people more knowledgable in things, at least at a scale that I can't hope to match. As mentioned in the introduction, all of this started with an article - [Build your own 9600 Baud C64 WiFi Modem For $10](https://1200baud.wordpress.com/2017/03/04/build-your-own-9600-baud-c64-wifi-modem-for-20/). 

The beating heart at the core of almost all of it, is the [Zimodem](https://github.com/bozimmerman/Zimodem)-firmware that runs on an ESP8266. On the C64-side it does have the ability to run at speeds up to 9600 baud which is something that's met with sniggering today while people at the time would be looking for the butterfly nets. You see, the C64 didn't have an ACIA - that was removed in order to save on costs. The favoured choice was instead to attempt to emulate its function, on a computer running at roughly 1 Mhz. The solution to do 9600 baud in spite of all commonly accepted limitations, is now referred to as *UP9600* - a technique first described in the article [UP9600: How to Bit-Bang 9600 Baud RS-232 on the C64](https://www.pagetable.com/?p=1656). The reason for listing it here is simply because it goes a long way into describing how serial on the Commodore 64 actually worked, both now and back then.
