class global::utilities::vim {
  require common::lua

  # Install vim plugins
  package { 'macvim':
    ensure          => installed,
    install_options => [
      '--with-cscope',
      '--with-lua',
      '--HEAD',
      '--override-system-vim'
    ]
  }

  # exec { "vim plugins":
  #   require => Package['macvim'],
  #   command => "/opt/boxen/homebrew/bin/vim -T dumb --noplugin -n -es -S /Users/${::boxen_user}/.vim/install.vim -c qall",
  #   creates => "/Users/${::boxen_user}/.vim/plugged"
  # }

}
