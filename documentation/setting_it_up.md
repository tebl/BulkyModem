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