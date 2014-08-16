class global::people::common::osx {

  # osx
  file { '/etc/launchd.conf':
    ensure  => 'present',
    content => template('people/nathankot/launchd.conf'),
    group   => 'wheel',
    owner   => 'root'
  }

  file { '/etc/sysctl.conf':
    ensure  => 'present',
    content => template('people/nathankot/sysctl.conf'),
    group   => 'wheel',
    owner   => 'root'
  }

  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::tap_to_click
  include osx::dock::autohide
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control
  include osx::global::natural_mouse_scrolling
  include osx::finder::unhide_library

  boxen::osx_defaults { 'Disable dashboard':
    user   => $::boxen_user,
    key    => 'mcx-disabled',
    domain => 'com.apple.dashboard',
    value  => true
  }

  boxen::osx_defaults { 'Multi-list view default':
    user   => $::boxen_user,
    key    => 'FXPreferredViewStyle',
    domain => 'com.apple.Finder',
    value  => 'clmv'
  }

  boxen::osx_defaults { 'Require password on screensaver':
    user   => $::boxen_user,
    key    => 'askForPassword',
    domain => 'com.apple.screensaver',
    value  => 1
  }

  boxen::osx_defaults { 'Screensaver password delay':
    user   => $::boxen_user,
    key    => 'askForPasswordDelay',
    domain => 'com.apple.screensaver',
    value  => 0
  }

  osx_login_item { 'Amethyst':
    name => 'Amethyst',
    path => '/Applications/Amethyst.app'
  }

  osx_login_item { 'Dropbox':
    name => 'Dropbox',
    path => '/Applications/Dropbox.app'
  }

  osx_login_item { 'Google Drive':
    name => 'Google Drive',
    path => '/Applications/Google\ Drive.app'
  }

  osx_login_item { 'Shortcat':
    name => 'Shortcat',
    path => '/Applications/Shortcat.app'
  }

  osx_login_item { 'Flux':
    name => 'Flux',
    path => '/Applications/Flux.app'
  }

  osx_login_item { 'Alfred':
    name => 'Alfred',
    path => '/Applications/Alfred\ 2.app'
  }

}
