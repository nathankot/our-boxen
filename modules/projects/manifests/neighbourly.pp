class projects::neighbourly {
  require homebrew
  require people::nathankot::folders

  include virtualbox
  include vagrant

  homebrew::tap { 'homebrew/dupes': }
  homebrew::tap { 'homebrew/homebrew-php': }

  package { 'imagemagick': ensure => installed }
  package { 'php54': ensure => installed }

  package { 'php54-intl':
    ensure => installed,
    require => Package['php54']
  }

  package { 'php54-memcache':
    ensure => installed,
    require => Package['php54']
  }

  package { 'php54-xdebug':
    ensure => installed,
    require => Package['php54']
  }

  package { 'phpunit':
    ensure => installed,
    require => Package['php54']
  }

  package { 'composer':
    ensure => installed,
    require => Package['php54']
  }

  boxen::project { 'neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => "/Users/${::boxen_user}/Development/Sites/neighbourly"
  }
}
