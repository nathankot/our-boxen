class people::nathankot::utils::vim {

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
  #   command => "/opt/boxen/homebrew/bin/vim --noplugin -u /Users/${::boxen_user}/.vim/plugins.vim +PlugInstall +qall",
  #   creates => "/Users/${::boxen_user}/.vim/plugged"
  # }

}
