# 1> Setting it up
The [documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem%20Module) that comes with the main module mostly only deals with soldering the device together, the purpose of this document is instead focused on everything related to the firmware we want running on the ESP8266.

![ESP8266](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/setup_esp8266.jpg)

While many of the options out there for purchase has been based on the article [Build your own 9600 Baud C64 WiFi Modem For $10](https://1200baud.wordpress.com/2017/03/04/build-your-own-9600-baud-c64-wifi-modem-for-20/), leading you through the steps of flashing a specific version of the firmware that was made available at the time that specific article was written. I instead wanted to use something that was slightly more *current*, which is another way of saying that I couldn't get the other one to work that one time I tried it. For that reason I'll be going through the steps needed to install the latest version of the [Zimodem](https://github.com/bozimmerman/Zimodem)-firmware instead.

- [1> Setting it up](#1-setting-it-up)
  - [1.1> Installing Zimodem](#11-installing-zimodem)
  - [1.2> Initial setup](#12-initial-setup)
  - [1.3> Plugging it in](#13-plugging-it-in)
  - [1.4> Finishing up](#14-finishing-up)

## 1.1> Installing Zimodem
If you're familiar with building and installing sketches from the *Arduino IDE*, then that should make the instructions here feel very familiar though I do **caution** you to pay attention to the *details* along the way. There are some that will cause your build not to compile, or even fail to work even though the upload would *appear* to succeed - just not actually function!

![Additional Boards Manager URLs](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/arduino_preferences.png)

Your first step on the way is that you will need the older version of *Arduino IDE*, meaning what [Arduino](https://www.arduino.cc/en/software) now lists as *Legacy IDE (1.8.X)*. With the software living somewhere on your hard-drive, download the latest release of [Zimodem](https://github.com/bozimmerman/Zimodem) (under releases it will be listed as *"Source code (zip)"*) and extract it somewhere that you'll be able to find, rougly ten seconds from now. Open up the sketch named zimodem.ino, found in the zimodem directory. The ESP8266 we're using isn't a product created by Arduino, so we need to install additional things in order to use it. In order to find those things, we first need to add an "Additional Boards Manager URLs" under *File* &rarr; *Preferences*.

> http://arduino.esp8266.com/stable/package_esp8266com_index.json

![Boards Manager](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/arduino_boards.png)

The previous step only defined somewhere that the software could look for board definitions, it won't actually install any of them. For that we need to head on over to *Tools* &rarr; *Board <selected board name>* &rarr; *Boards Manager...*. Search for *"esp8266"* and you should find the one shown above, but note that we **NEED** to install an older version of it. There are newer versions available, but I was never able to get any of them working beyond version **2.7.4**. I have no idea as to why this is still the case, but this isn't related to Zimodem as even basic blink sketches will have these issues. So... use the *selection version* dropbox to select the correct version.

![Select board](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/arduino_select.png)
![Board settings](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/arduino_settings.png)

With the definitions in place, select the specific board by going to *Tools* &rarr; *Board <selected board name>* &rarr; *ESP8266 Boards (2.7.4)* &rarr; *Generic ESP8266 Module*. The next step is to setup your board settings, and while I have no idea what most of that means - the settings above are the ones that worked for me. Just start at the top and work your way down.

Hit compile and watch everything assemble itself before your eyes. If something fails, doublecheck all of the steps covered so far. Connect up your ESP8266 to your computer via a USB-cable, ideally it should not be plugged into the *BulkyModem* during this step - mostly because you never know what kind of sketch was put on it the last time you were playing around with it. Select the relevant serial port from *Tools* &rarr; *Port*, normally you would only have one show up here (check *Device Manager* in case you have more and want to figure out which is which, alternatively just pull one and see which one disappeared).

When uploading the sketch to your ESP8266 there is an extra step you probably aren't familiar with if you've only used standard Arduino-modules, we need to put the module into a specific mode so that it knows that we're uploading something to it. The correct procedure as far as I've understood it is to press and keep holding *FLASH*, momentarily push *RST* - only then can you click upload in the *Arduino IDE*.

Keep holding that button until you see that it starts writing changes to the flash. It will take quite a bit of time, even appearing to freeze for up to 20 seconds while clearing the entire flash contents. Keeping the *Aduino IDE* open, continue on to the next section in order to start talking to the modem software.

## 1.2> Initial setup
As mentioned in the previous chapter, we now need to start communicating with the modem software. While you can probably complete these steps using the procedures listed in the getting started guide for [modern systems](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started_modern.md), just don't go plugging it into a vintage system to see *if* something that's not quite so easily replaceable blows up. Since I've already forced you to use *Arduino IDE*, might as well complete the initial setup using its *Serial Monitor*.

![Serial Monitor](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/arduino_serial_monitor.png)

If you're not familiar with it, it's the top right icon that looks like a magnifying glass. The modem itself needs some very specific settings in order to work - ensure that the first dropdown is set to *newline* and baud rate is set to *1200*. Hit the *RST* button on the module and you should get some information about the modem software that we installed along with any stored network settings. Commands are entered into the box at the top, hitting *enter* to send them.

> C64Net WiFi Firmware v3.7.1
> sdk=2.2.2-dev(38a443e) chipid=1458270 cpu@80
> totsize=4096k ssize=379k fsize=1907k speed=40m
> INITIALIZED
> READY.

It may take some getting used to, but it is very intuitive when you get into it. The first command you need to send is *"at+config"*, it should repeat the command sent and reply with *OK* similar to the following. If at this point the ESP8266 appears to crash and give you a stack trace instead of anything sensible, then you probably used the wrong version of the board definitions as described in the previous section.

> at+config
> OK
> 
> Main Menu
> [HOST] name: 
> [WIFI] connection: Not connected
> [FLOW] control: DISABLED
> [ECHO] keystrokes: ON
> [BBS] host: DISABLED
> [PRINT] spec: 
> [PETSCII] translation: OFF
> [ADD] new phonebook entry
> 
> Enter command or entry or ENTER to exit: wifi
>
> WiFi Networks:
> [1] WiFi AP (-84)*
>
>Enter number to connect, or ENTER: 1
>
> Enter your WiFi Password: Test12345
>

This gives you a listing of the relevant options, the following command is the part that is capitalized. So in order to configure *WiFi* you would send "*wifi*", then - once it responds with list of seen wireless networks you point one out using the digit in front of it. Note that the ESP8266 only supports 2.4 Ghz wireless networks, so those are the only ones that you'd see. Just follow the prompts and it should make sense.

The *BulkyModem* uses flow control, and so from the configuration menu (*at+config* in case you already forgot) we would use the command *FLOW* and set it to *"rtscts"*. Except we can't do that here because the module itself can't use those signals, and if you were to enter it you would only lock yourself out until it is reset again. So don't do that yet. Instead just hit *enter* to exit out of the menu, send *y* to save your network details. For the rest you need to connect it up using something that supports the RTS/CTS. Ideally a [modern systems](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started_modern.md) connected to the modem via a suitable *USB to RS-232*-adapter.

## 1.3> Plugging it in
Your *BulkyModem* can be powered up using any good quality 5V DC center positive PSU with a 2.1mm x 5.5mm barrel connector, but note that while a USB-cable going to the ESP8266 may work - you won't get the joy of using the ON/OFF button. 

![MEAN WELL GST25B05-P1J](https://github.com/tebl/BulkyMIDI-32/raw/main/gallery/mean_well_psu.jpg)

While I've been known to skimp on just about every component, I don't recommend going the cheap route when it comes to a good and reliable PSU - opting instead for "*reasonable*". The one I'm using is a *MEAN WELL GST25B05-P1J*, although I'm sure there are several suitable options available - it is one that I can recommend. At least as far as having worked for me.

## 1.4> Finishing up
Note however that before even considering plugging it up to any of your vintage computer equipment, you should try it out without anything else plugged into it - if it blows up, it's the only thing blowing up. If all goes well, then the next exciting step is the [getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md) guide. While there is somewhat limited excitement to be had hooking it up to a modern system via an RS-232 adapter, it's where I recommend starting before even considering hooking things up to a vintage system. All that and more in the aforementioned [getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md)-guide.