class people::nathankot::bins::vim {

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

  exec { "vim plugins":
    require => Package['macvim'],
    command => '/opt/boxen/homebrew/vim +PlugInstall +qall',
    creates => '~/.vim/plugged'
  }

}
