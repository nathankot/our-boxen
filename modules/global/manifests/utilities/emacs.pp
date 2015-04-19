class global::utilities::emacs {
  include boxen::config

  package { 'emacs': }

  file { '/Library/LaunchAgents/dev.emacs.plist':
    content => template('global/dev.emacs.plist.erb'),
    group => 'wheel',
    owner => 'root',
    notify => Service['emacs']
  }

  service { 'emacs':
    require => File["/Library/LaunchAgents/dev.emacs.plist"],
    ensure => running,
  }
}
