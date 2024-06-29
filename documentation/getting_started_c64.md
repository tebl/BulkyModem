# 1> Introduction
This section of the documentation deals with how to get started with a specific system or program related to the use of the *BulkyModem*. While it may in many cases be relevant for use with any similar modem, there may be differences encountered. This document assumes that you have already read the main document on [getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md) as some terms may have been defined there.

- [1> Getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md)
- [2> Commodore 64](#2-commodore-64)
  - [2.1> UP9600](#21-up9600) 

# 2> Commodore 64
I'm not very familiar with using modems on the C64, mainly as I've never owned one while phone lines were still hooked up to regular houses. So instead of bragging about how I surfed BBS-es back in the day good old days, my experiences on this front are limited to having used them from the comfort of a standard beige IBM-clone. Until putting together the *BulkyModem*, so what follows is more a description of the steps I took in order to have fun with it on a *Commodore 64* in *the year of our lord 2024*!

> I wrote that last part in order to make things sound *ancient*, please replace any offending part - mentally, while reading or in your own github branch in order to fit with your own belief, and/or lack thereof.

For that reason alone I can't really provide you with a list of suitable software for every use-case, I instead only recommend that you start with loading up a copy of [CCGMS Future](https://github.com/mist64/ccgmsterm) - it is one that I've been able to successfully use. If you're unsure about the various commands, check out the online [Documentation](https://github.com/mist64/ccgmsterm/blob/main/Documentation.md) for it.

![CCGMS 1200 baud](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/ccgms_1200.jpg)

Once the software loads hit the *F7*-key and ensure that modem type is set to *User Port 300-1200*, change baud rate option to 1200, set duplex to full and you should be good to go. Setting firmware to *Zimodem* is also an option though either setting seems to work from what I've tested. Hit *S* to save the configuration, then return to the main terminal screen. If you require more raw speed than what 1200 baud can provide, then see the next section on [UP9600](#21-up9600) for a way to increase it further.

![CCGMS ASCII](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/ccgms_ascii.jpg)

If for some reason you haven't completed the initial setup of your *BulkyModem*, mainly to configure your network settings as well as set flow control to match *BulkyModem* hardware - hit *F8*-key to toggle terminal type over to ASCII. This last bit is to avoid any confusion that would cause issues when attempting to enter your WiFi password, assuming that your password doesn't require any keys that your *Commodore 64* doesn't have. When finished, hit *F8* until you arrive back at the standard PETSCII-terminal. 

At this point you should be up and running with CCGMS Future, and from that point on I expect you'll want to dial your first BBS. I won't go into much more detail about the program as most other details will be shared between all systems, because after all; you're talking to a Hayes-modem (in an emulated *fashion* at least). For information about which commands the Zimodem understands, check out its main [README](https://github.com/bozimmerman/Zimodem) for that information.

To end with something specific, here's the command to dial a specific BBS (replace address details as needed):

```
ATD"cottonwoodbbs.dyndns.org:6502"
```

## 2.1> UP9600
Sometime in 1997, someone found out how to communicate with serial-attached devices at devices exceeding 1200-baud - all the way up to a blistering 9600 baud! This requires some changes to the way your *Commodore 64* communicates over serial, in fact it does so using some timers that had not previously been used on the machine - for all of the exciting details on how this is done, set the article [UP9600: How to Bit-Bang 9600 Baud RS-232 on the C64](https://www.pagetable.com/?p=1656).

> Note that this specific - albeit faster - mode of communication simply isn't possible on the Commodore 128. This is because of the timers that were previously unused on the Commodore 64, have now been put to use in order to implement "burst"-mode on the 128. While the hardware is only explicitly used when communicating with 1571 disk drives, it is there in the firmware and you will encounter problems due to it. As far as I know, even connecting a UP9600-enabled device to the computer will cause it to not start up properly. So if you have a 128, don't enable UP9600 - the modem itself will still work, just at the original 1200 baud. 

![UP9600-jumpers](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/ccgms_up9600_a.jpg)

In order to enable this mode for use with on a *Commodore 64*, you first need to add the two jumpers on your *UserPort*-adapter (the jumpers are in a different place from what is shown). Note that this should only ever be attempted while your system is turned off, ideally you shouldn't be poking at it with your bare fingers either - especially if you've ever found yourself building up a charge while shuffling around in your house (static electricity and all that). This won't make the software magically update to match the changes you've made, for that you need to update your settings to match.

![UP9600-settings](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/ccgms_up9600_b.jpg)

Which means that back in CCGMS you should still see it connected at 1200 baud, in order to increase the rate of transfer you can issue the command *atb9600* in order to tell your modem to switch over to 9600 baud. There'll be some weird characters in response on your terminal when doing so, this is because your terminal is no longer matches that of the new modem setting. To fix that you only have to press *F7*, and from there you set modem type to *UP9600 / EZ232*, set baud rate to 9600 and exit out again to have everything talking together again. This does sound quite a bit convoluted, but please consider that while you can issue commands to have a modem temporarily switch to a faster speed - you won't be able to send a command to a modem running at speeds faster that your computer can transmit!

```
ATB9600
```

One thing I would recommend is that you do **not** save changes on your modem after changing baud rate, that's the *at&w* command by the way. It might sound like a painful way to do things, especially since you'd need to do this every step the modem is powered on. That is however the way it was done back in the day. The reason for this requirement is that while you can happily issue new commands to have a modem temporarily switch to a faster speed, the other direction might not be quite as easy. It's surprisingly hard to tell a device to slow down, especially if it's already running at speeds faster than what your vintage computer is capable of communicating at.
