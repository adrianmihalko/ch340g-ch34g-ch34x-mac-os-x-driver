cask 'wch-ch34x-usb-serial-driver' do
  version '1.4'
  sha256 '032e85afc2dfeaba6e77637718749e3af381892305c2c02c12d1cd2bb3585bc3'

  url 'https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver/raw/master/CH34x_Install_V1.4.pkg'
  name 'WCH USB serial driver for CH340/CH341 (unofficial release)'
  homepage 'https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver'

  license :gratis

  pkg 'CH34x_Install_V1.4.pkg'

  uninstall pkgutil: 'com.wch.usbserial',
            kext:    'com.wch.usbserial',
            delete:  [
                       '/System/Library/Extensions/usb.kext',
                       '/Library/Extensions/usbserial.kext',
                     ]

  caveats <<-EOS
    This driver was sourced from the OEM website. Discussion:
    https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver
  EOS
end
