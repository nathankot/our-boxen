class global::applications::usboverdrive {
  package { 'USB Overdrive':
    ensure   => installed,
    source   => 'http://www.senlick.com/macsw/USB-Overdrive-31.dmg',
    provider => appdmg_eula
  }
}
