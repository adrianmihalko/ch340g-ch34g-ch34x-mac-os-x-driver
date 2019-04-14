cask 'wch-ch34x-usb-serial-driver' do
  version '1.5'
  sha256 '21d28f3ea0a5625d13ace61f7da715704bffce28fb57a0924b9443b8d3ed6139'

  url 'https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver/raw/master/CH34x_Install_V1.5.pkg'
  name 'WCH USB serial driver for CH340/CH341 (unofficial release)'
  homepage 'https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver'

  license :gratis

  pkg 'CH34x_Install_V1.5.pkg'

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
