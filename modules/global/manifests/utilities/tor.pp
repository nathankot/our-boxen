class global::utilities::tor {
  include boxen::config

  package { 'tor':
    ensure => installed,
    notify => Service['tor']
  }

  file { '/Library/LaunchAgents/dev.tor.plist':
    content => template('global/dev.tor.plist.erb'),
    group => 'wheel',
    owner => 'root',
    notify => Service['tor']
  }

  service { 'tor':
    require => File["/Library/LaunchAgents/dev.tor.plist"],
    ensure => running
  }
}
