$ You may need to reboot for changes to take effect

Use argonone-config to configure fan
Use argonone-uninstall to uninstall

# ARGON ONE Pi 4 Power Button Functions
The following chart will help with the Power button functions. Once the script is installed, it will work with Pi OS 32/64-Bit and within RetroPie.

ARGON ONE
PI 4 STATE	ACTION	FUNCTION
OFF	Short Press	Turn ON
ON	Long Press (>= 3s)	Soft Shutdown and Power Cut
ON	Short press (<3s)	Nothing
ON	Double tap	Reboot
ON	Long Press (>= 5s)	Forced Shutdown


# Default ARGON ONE Pi 4 Fan Speed
After installing the Agon ONE Pi 4 script, by default the settings are as follows:

CPU TEMP	FAN POWER
55’C	10%
60’C	55%
65’C	100%
However, keep in mind you may change and re-configure the fan to your desired settings. Please see this: 
    https://wagnerstechtalk.com/argonone/#Customize_Fan_Settings	

# Install Argon ONE Scripts in Pi OS (32/64-bit)
Connect your Pi to the internet (WiFi or Ethernet).
Boot into Pi OS.
Open a shell-terminal.
Copy & paste the following command and press ENTER (yes, don’t forget the ” | bash” at the end or it won’t work properly):

 curl https://download.argon40.com/argon1.sh | bash 

Type exit and press ENTER.

The scripts will become active after installation. Therefore, rebooting isn’t necessary.



