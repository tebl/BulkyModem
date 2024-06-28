# 1> Setting it up (Mini RS-232)
The [documentation](https://github.com/tebl/BulkyModem/tree/main/BulkyModem-32%20Mini) that comes with the main module, mainly only deals with the process of soldering the device together. The purpose of this document is instead to focused on everything related to the firmware we want running on our ESP-32, [Zimodem](https://github.com/bozimmerman/Zimodem).

![ESP-32](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/setup_esp32.jpg)

- [1> Setting it up](#1-setting-it-up)
  - [1.1> Installing Zimodem](#11-installing-zimodem)
  - [1.2> Initial setup](#12-initial-setup)
  - [1.3> Plugging it in](#13-plugging-it-in)
  - [1.4> Finishing up](#14-finishing-up)

## 1.1> Installing Zimodem
If you're familiar with building and installing sketches from the *Arduino IDE*, then that should make the instructions here feel very familiar though I do **caution** you to pay attention to the *details* along the way. As the software is actively being developed there will be changes that would inevitably cause this guide to go out of date, so try to observe the thinking behind the tasks rather than expecting everything to be completely identical.

For this guide I'm using the more modern *Arduino IDE*, as opposed to the *Legacy IDE* that are still required by the ESP8266-version of the hardware. I don't believe upgrading is necessary, but while chasing down some issues I ended up upgrading and so the instructions are for the new one instead. Though everything has been shuffled around between the generations of the interface, most should still be recognizable to people familiar with either.

![Boards Manager](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/arduino_esp32_boards.png)

As we'll be using an ESP-32, we need to add the board definitions that are needed for this project. To do that we need to head on over to *Tools* &rarr; *Board: <selected board name>* &rarr; *Boards Manager...*. Search for **"esp32 espressif systems"**, and the only listed is the one we need. Do however note that we **NEED** an older version of it in order to ensure that everything's working properly, use the dropbox to select the correct version - which is currently **2.0.7**.

![Select board](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/arduino_esp32_select.png)

Select the specific board by going to *Tools* &rarr; *Board <selected board name>* &rarr; *esp32* &rarr; *ESP32 Dev Module*. After selecting it you need to ensure that your board settings are correct, and while I have no idea what most of it actually means - the settings that are also shown in the previous pictures, are the ones that have worked for me. Just start at the top and work your way down the list.

The *BulkyModem-32 (Mini RS-232)* has been wired up for a 5-wire serial setup, meaning that we're using hardware-based flow control (RTS/CTS) in addition to TX, RX and a shared ground. You can configure this from the software itself using the command-line interface, but if you want to ensure that it is set up correctly from the start - you can search for the first line shown below (*"INCLUDE_PING true"*), and then add the two other lines directly below it.

> \# define INCLUDE_PING true
> \# undef DEFAULT_FCT
> \# define DEFAULT_FCT FCT_RTSCTS

With all of that out of the way, hit *Verify* and watch everything compile before your eyes. If something fails, doublecheck all of the steps covered so far. Connect up your ESP-32 to your computer via a USB-cable, ideally it should not be plugged into the *BulkyModem-32 (Mini RS-232)* during this step - mostly because you never know what kind of sketch was originally put on it. Usually it's a *blink*-sketch if it came fresh out of the package, but if it's something you've played around with earlier then it's always a good idea to play it safe. As far as I understand, the new *Arduino IDE* is supposed to be able to select the correct serial port for you, but if it doesn't work - then check it from *Tools* &rarr; *Port*.

If the process succeeded, hit upload and you should be good to go. At this point the Zimodem-firmware should be installed on your ESP-32, and you can insert it into the *BulkyModem-32 (Mini RS-232)*.

## 1.2> Initial setup
One key difference between Zimodem running on an ESP8266, and that of an ESP-32 is that the latter has two separate UARTS. While you can get some debugging information on the serial interface available, everything we would associate with using the Zimodem will only be available over RS-232.

Most of the steps needed will be covered in the *getting started*-guide for [modern systems](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started_modern.md). Mostly because I can't recommend simply plugging it into a vintage system to see *if* something that's *not-quite-so-easily-replaceable* blows up in your face. Going forward I'll be using [Tera Term](https://teratermproject.github.io/index-en.html) software, as well as an *RS-232 to USB*-adapter from a somewhat recognizable brand.

![Startup screen](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/tera_term_startup.png)

Starting it up, it will default to *TCP/IP* so change it over to *Serial* and ensure that your adapter is plugged in (not the ESP-32, in case you're powering it from the same computer). We won't be able to change any of the settings here for baud rate and flow control, for that we need to carry on with the defaults - for now.

![Startup screen](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/tera_term_1200_none.png)

Once into the main program, select *Setup* &rarr; *Serial port...* and you should get the screen shown above. The software will be running at **1200** baud by default, we'll also need to set up **RTS/CTS** if you've gone to step of altering the code as described earlier (use **none** if you didn't).

![Startup screen](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/tera_term_setup_003.png)

If you hit the physical *EN*-button on the ESP32-module, it should reboot and offer up a startup message such as the one shown above. You should now be able to type in commands and have it respond back to you, but before going through the initial setup we won't be doing very much with it. The first command you need to send is *"at+config"*, it should repeat the command sent and reply with *OK* similar to the following. 

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

This gives you a listing of the relevant options, the following command is the part that is capitalized. So in order to configure *WiFi* you would send **wifi**, then - once it responds with list of seen wireless networks you point one out using the digit in front of it. Note that the ESP8266 only supports 2.4 Ghz wireless networks, so those are the only ones that you'd see. Just follow the prompts and it should start to make sense.

The *BulkyModem-32 (Mini RS-232)* uses hardware flow control, and so from the configuration menu (*at+config* in case you already forgot) - we can use the command **flow** in order and enter the response **rtscts** to set it correctly. After doing that we just need to hit *enter* to exit out of the menu, sending *y* to save your network details when prompted. Remember to set *Tera Term* to also use the same value for flow control.

## 1.3> Plugging it in
![](https://raw.githubusercontent.com/tebl/BulkyModem/main/gallery/build/mini32_rs232/016.jpg)
Your *BulkyModem-32 (Mini RS-232)* will be powered using a USB-cable connected up to your ESP32. Actual power draw should be quite low, so just about any reasonable quality USB-based power supply will work. For the *RS-232*-side of it, you'll most likely be using a standard serial cable (DB9-male to female).

**NB!** Dealing with vintage computers, don't go plugging and unplugging things while either of them is powered. It should be *OK*, in the same way it was *OK* back in the days any of the equipment were considered current. Except that all of these things are now ancient, and not quite as easily replaced...

## 1.4> Finishing up
If all goes well, and you're ready to [re]start exploring BBS-es you can follow along with the [getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md) guide. While there is somewhat limited excitement to be had hooking it up to a modern system via an *RS-232 to USB*-adapter, it's where I recommend starting before moving onto vintage systems. All that and more in the aforementioned [getting started](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md)-guide.