# 1> Getting started
This documentation deals with how to get started with a specific system or program related to the use of the *BulkyModem*, but will in many cases also be relevant for just about any [Zimodem](https://github.com/bozimmerman/Zimodem)-based modems that you may already have. Many of the options out there will either be based on [Build your own 9600 Baud C64 WiFi Modem For $10](https://1200baud.wordpress.com/2017/03/04/build-your-own-9600-baud-c64-wifi-modem-for-20/), running an older version of the software that can be flashed onto the ESP8266 that it is based on. I did however want something that was slightly more current, and so I'm using the latest version of the previously mentioned Zimodem-firmware instead.

However this isn't a history about the *BulkyModem*, it was supposed to be a guide to getting started on actually using it. For that we need to know where does it differs from other modems like it? The main difference between this and many of the other designs is that this doesn't choose between buying a modem built for a Commodore 64, or one that communicates over RS-232. For that reason it does in fact have a *mode*-button on the front of it that enables you to choose between the two interfaces. While you shouldn't go around hooking it up to two different machines at the same time, I wanted a modem that was capable of talking to either one.

Which brings me to the modem itself, and while it is perfectly capable of supporting higher baud rates than the default of 1200 baud - I recommend that you keep it at that setting so that every system is able to talk to it after it starts up. Call it the least common denominator between the different systems if you will. When setting up your terminal set that up at 1200 baud as well, you can then issue a command to the modem to switch to a higher baud rate and reconfigure your terminal to match. This way a fresh power-on will always start with something everybody understands.

This is by no means meant to be an exhaustive source of information for all things on using modems on a vintage computer, the purpose is simply to provide you with some form of a starting point. I always recommend starting with the guide for a modern system on a newly built modem, mainly so that you don't blow up something that can't be replaced just as easily as swiping a credit card. When you're suitably sure that everything works as it was supposed to, only then should you consider connecting it to a vintage system of your own choosing.

- [1> Getting started](#1-getting-started)
    - [1.1> Modern system](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started_modern.md)
    - [1.2> Commodore 64](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started_c64.md)

https://github.com/bozimmerman/Zimodem

Boards URL:
http://arduino.esp8266.com/stable/package_esp8266com_index.json

Add esp8266, **need** to select **2.7.4** as version - later versions will not work.
```
AT+CONFIG
OK

Main Menu
[HOST] name: BulkyModem
[WIFI] connection: Not connected
[FLOW] control: RTS/CTS
[ECHO] keystrokes: ON
[BBS] host: DISABLED
[PETSCII] translation: OFF
[ADD] new phonebook entry

Enter command or entry or ENTER to exit: WIFI

WiFi Networks:
[1] MyWIFI (-67)*

Enter number to connect, or ENTER: 1

Enter your WiFi Password: mywifipassword

Network settings:

[DISABLE] DHCP

Enter option to toggle or ENTER to exit
: 

Main Menu
[HOST] name: BulkyModem
[WIFI] connection: MyWIFI
[FLOW] control: RTS/CTS
[ECHO] keystrokes: ON
[BBS] host: DISABLED
[PETSCII] translation: OFF
[ADD] new phonebook entry

Enter command or entry or ENTER to exit: 
```

at+config
  wifi

ate0                disable echo
atf0                enable rts/cts
at&w                write settings


