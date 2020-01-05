# ch340g-ch34g-ch34x-mac-os-x-driver
Latest **macOS Sierra/High Sierra**-compatible driver for devices using the CH340G, CH34G or CH34X chipset. This chipset is used in several Arduino-compatible clones and serial-to-USB cables.

**Do not install if you have the current macOS Mojave 10.14 or later.** macOS Mojave 10.14 (released in October 2018) includes a CH34x driver by Apple. If both Apple's and the OEM driver are installed, they will create conflicting non-functional serial ports. Steps 1 to 3 below can be useful to remove the conflicting OEM drivers.

If you use Apple's driver and have problems with the serial communication, ensure the data rate is 460,800 bps or lower.

## Introduction
Version 1.5 (2018-07-05) of the [OEM driver](http://www.wch.cn/download/CH341SER_MAC_ZIP.html) for the CH34x chipset.

Version 1.4 (2017-01-11) of the [OEM driver](http://www.wch.cn/download/CH341SER_MAC_ZIP.html) for the CH34x chipset.

Version 1.3 (2016-09-27) of the OEM driver causes a kernel panic (a.k.a. *crash*) when installed on **macOS Sierra**.

## Installation

1.  Unplug any CH34* devices.
1.  Unload the old drivers if running:
    * `sudo kextunload /Library/Extensions/usbserial.kext`
    * `sudo kextunload /System/Library/Extensions/usb.kext`
1.  Remove the old driver by issuing one of the following commands (depending on your installation):
    * `sudo rm -rf /System/Library/Extensions/usb.kext`
    * `sudo rm -rf /Library/Extensions/usbserial.kext`
1.  Double-click on the `CH34x_Install_V1.5.pkg` file and install (no need to reboot)
1.  Instead of rebooting, you can force quit Installer after it completes.
1.  Load the new driver:
    * `sudo kextload /Library/Extensions/usbserial.kext`
1.  Plug in your device. It should now be listed under the `/dev` directory. Examples:
    * `/dev/cu.wchusbserial1410`
    * `/dev/tty.wchusbserial14210` (driver version 1.5)

## Installation with Homebrew-Cask

* Install the driver by the following commands:
  * `brew tap adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver`
  * `brew cask install wch-ch34x-usb-serial-driver`


## Troubleshooting

If the device doesn't show up under `/dev`, check the section "Security and Privacy" in System Preferences for any notices about blocked software.

Note: **disabling System Integrity Protection is no longer necessary**, as the current drivers are properly signed by the OEM. If you're having problems, they're almost certainly not related to SIP. The instructions below are left only for reference purposes. If you had previously disabled it (*especially* if you did so completely), [**you are strongly encouraged to fully re-enable SIP.**](https://developer.apple.com/library/content/documentation/Security/Conceptual/System_Integrity_Protection_Guide/ConfiguringSystemIntegrityProtection/ConfiguringSystemIntegrityProtection.html)

If, and only if, the device is not recognized after the installation (or you cannot install the driver), please disable *System Integrity Protection*:

*  Reboot your Mac into *Recovery Mode* by restarting your computer and holding down `Command+R` until the Apple logo appears on screen.
*  Open the Terminal (Applications > Utilities > Terminal).
*  In the Terminal window, type in `csrutil enable --without kext` (or to fully disable: `csrutil disable`) and press `Enter`.
*  Restart your Mac.

Please share this page!

Regards,  
Adrian Mihalko  
www.mihalko.eu

p.s:
I **LOVE** coffee! Buy me a coffee at:   
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=89T88ER75BJ9L&currency_code=EUR&source=url)




