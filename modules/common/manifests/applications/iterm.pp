class common::applications::iterm {
  package { 'iterm2': provider => brewcask, ensure => installed }
  boxen::osx_defaults { 'Iterm2 Preferences Folder':
    user   => $::boxen_user,
    key    => 'PrefsCustomFolder',
    domain => 'com.googlecode.iterm2',
    value  => "/Users/${::boxen_user}/.iterm2"
  }
}
