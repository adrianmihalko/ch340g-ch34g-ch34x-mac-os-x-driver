# ch340g-ch34g-ch34x-mac-os-x-driver
Latest **macOS Sierra**-compatible driver for devices using the CH340G, CH34G or CH34X chipset. This chipset is used in several Arduino-compatible clones and serial-to-USB cables.

## Introduction
Version 1.4 (2017-01-11) of the [OEM driver](http://www.wch.cn/download/CH341SER_MAC_ZIP.html) for the CH34x chipset.

Version 1.3 (2016-09-27) of the OEM driver causes a kernel panic (a.k.a. *crash*) when installed on **macOS Sierra**.

## Installation

* Remove the old driver by issuing one of the following commands (depending on your installation):
  * `sudo rm -rf /System/Library/Extensions/usb.kext`
  * `sudo rm -rf /Library/Extensions/usbserial.kext`
*  Restart your Mac.
*  Double-click on the `CH34x_Install_V1.3.pkg` file.
*  Restart your Mac.
*  Plug in your device. It should now be listed under the `/dev` directory. Examples:
  * `/dev/cu.wchusbserial1410`
  * `/dev/cu.wchusbserial1420`

## Installation with Homebrew-Cask

* Install the driver by the following commands:
  * `brew tap mengbo/ch340g-ch34g-ch34x-mac-os-x-driver https://github.com/mengbo/ch340g-ch34g-ch34x-mac-os-x-driver`
  * `brew cask install wch-ch34x-usb-serial-driver`


## Troubleshooting

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
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=adriankoooo%40gmail%2ecom&lc=SK&item_name=Adrian%20Mihalko&currency_code=EUR&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted)
