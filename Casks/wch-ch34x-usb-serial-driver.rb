cask 'wch-ch34x-usb-serial-driver' do
  version '1.3'
  sha256 '33156fd45a10efd50bede069c2081687d65053c88320a7166e0e05841c8f9c5b'

  url 'https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver/raw/master/CH34x_Install_V1.3.pkg'
  name 'WCH USB serial driver for CH340/CH341 (unofficial release)'
  homepage 'https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver'

  license :gratis

  pkg 'CH34x_Install_V1.3.pkg'

  uninstall pkgutil: 'com.wch.usbserial',
            kext:    'com.wch.usbserial',
            delete:  [
                       '/System/Library/Extensions/usb.kext',
                       '/Library/Extensions/usbserial.kext',
                     ]

  caveats <<-EOS.undent
    Warning: This driver was not officially published and its source is
    unclear. Discussion:
    https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver
  EOS
end
