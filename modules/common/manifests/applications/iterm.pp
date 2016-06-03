class common::applications::iterm {
  include iterm2::dev
  boxen::osx_defaults { 'Iterm2 Preferences Folder':
    user   => $::boxen_user,
    key    => 'PrefsCustomFolder',
    domain => 'com.googlecode.iterm2',
    value  => "/Users/${::boxen_user}/.dotfiles/.iterm2"
  }
}
