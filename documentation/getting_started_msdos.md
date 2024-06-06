# 1> Introduction
This section of the documentation deals with how to get started with a specific system or program related to the use of the *BulkyModem*. While it may in many cases be relevant for use with any similar modem, there may be differences encountered. This document assumes that you have already read the main document on [getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md) as some terms may previously have been defined there.

- [1> Getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md)
- [2> MS-DOS](#2-ms-dos)
  - [2.1> Kermit](#21-kermit) 

# 2> MS-DOS
OK, so technically MS-DOS isn't a vintage system by itself, it's an operating system. The vintage system we're talking about, is mostly those that were advertised as *IBM PCs and compatibles*. While many - including me - would simply refer to it as *DOS* (*Disk Operating System*), that's inherently a bit messy in a project that touches on vintage systems that have systems that would also be described as a *DOS*. Most of them will have similarities as most of them were created at a time when *CP/M* had already defined what would have been expected from the system, including *MS-DOS* - just know that they're not the same. Did you need to know that? Probably not. 

I'm not going to go into great detail here as there are plenty of resources available online, but not all programs are necessarily easy to get started with so I'll at least try to offer some hints for some of them.

[Kermit](#21-kermit) for MS-DOS is supported on computers running versions all the way down to 2.0, meaning that it should even be able to run on original XT-class computers. If you want a definite answer instead of "should", send me an *IBM 5150* and I'll find out for you. As an original IBM-product, no expenses were spared on your behalf - so you should have a proper *ACIA* on at least one of your expansion cards. The smaller DE-9 connector that we're familiar with on more modern systems, relatively speaking, didn't exist at that point in time - so expect to use a DB-25 to DE-9 adapter if you're going that far back in time.

**NB!** DE-9 connectors are more commonly known as DB-9 connectors, because if a DB-25 has 25 pins, then surely one with 9 pins would be called a DB-9? Apparently not.

## 2.1> Kermit
[Kermit](https://www.kermitproject.org/mskermit.html) for MS-DOS is a well-known communications package that supports a **lot** of options, and by a "lot" - I mean a metric ton of them. You don't need to know a great deal to get started using it, just know that it seems to be more geared towards being a professional terminal emulation suite as opposed to being something that you'd use to connect up to a *BBS* (*Bulletin Board System*). So why am I recommending it then? Well... It's available, and it's been open-sourced so it seemed a likely candidate to get started with. The one I've been using on my vintage systems is version 3.14, simply because I had originally assumed that the newest version would be listed at the top.

The first step is to set some starting details regarding how it is connected to the system, as is common with the *BulkyModem* we'll set it up with 1200 baud, 8n1 and hardware flow control (RTS/CTS). I have it connected to COM2, so change that if you're using something else. The easiest way to ensure that all of this is set up when starting the software, is by editing the file *MSCUSTOM.INI* and changing the relevant sections. Note that these are commands as recognized by *kermit*, so these can be used interactively as well.
> set modem hayes
> set port 2
> set speed 1200
> set flow rts/cts

Start the program using the *kermit* command, and you'll encounter the *kermit* command-line that closely resembles does so don't be confused by its appearance. We're not actually connected to anything yet, for that you need to enter the command *connect* in order to switch over to the terminal view.
> connect

At this point forward you're communicating over RS-232, so turn on the modem if you've not already done so. As long as the settings are correct, you should see the Zimodem-firmware print its own welcome text to the terminal. If you find that you need to get back to change any of the settings, hit ALT+X to get back to the command-mode for *kermit*. If you need to change to a speed that's a bit faster than this, see [higher baud rates](#211-higher-baud-rates) before continuing.

At this point you should be talking to the modem, and the *AT* command should result in an *OK* response on your terminal:
> AT

To end with something more specific, here's the command for dialling a specific BBS (replace address details as needed):
> ATD"cottonwoodbbs.dyndns.org:6502"

## 2.1.1> Higher baud rates
As mentioned initially, the recommended baud rate setting for *BulkyModem* should be kept to the default setting of *1200*. That doesn't necessarily mean that you are limited to this. First off we need to tell the modem to switch to something else, I'm using 9600 baud as an example going forward. First off we need to ensure that we are connected to the modem, and not still in *kermit*s command-line mode. Issuing the following command should be returned by an *OK*-message from the modem:
> AT

Well aware that we're talking to the modem, we can tell *it* to switch speeds to 9600 using the following command:
> ATB9600

At this point the modem switches speeds, but our terminal software doesn't know this - and neither does it understand the *OK* message that it received in return. This might be displayed as garbage on the screen, or nothing at all - that's a limitation of serial as it was back then, and as it is now. To update the terminal, hit ALT+X to get back to *kermit*s command-line and these commands to change speeds and return to talking to the modem:
> set speed 9600
> connect

At this point, both ends should be communicating as 9600 baud. Both the modem and computer should be able to talk at even faster rates than that, but it's a place to start.