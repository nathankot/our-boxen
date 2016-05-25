class common::utilities::fish {
  require boxen::config

  package { 'fish':
    ensure => installed,
    install_options => ['--HEAD']
  }

  file_line { 'add fish to /etc/shells':
    path    => '/etc/shells',
    line    => "${boxen::config::homebrewdir}/bin/fish",
    require => Package['fish'],
  }

  osx_chsh { $::luser:
    shell   => "${boxen::config::homebrewdir}/bin/fish",
    require => File_line['add fish to /etc/shells'],
  }
}
