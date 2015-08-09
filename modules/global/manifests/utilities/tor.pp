class global::utilities::tor {
  include boxen::config

  package { 'tor':
    ensure => installed,
    notify => Service['tor']
  }

  service { 'tor':
    require => File["/Users/${::boxen_user}/Library/LaunchAgents/homebrew.mxcl.tor.plist"],
    ensure => running
  }
}
