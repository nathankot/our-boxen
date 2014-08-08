class projects::neighbourly {
  require people::nathankot::folders

  include virtualbox
  include vagrant

  package { 'composer': ensure => installed }

  homebrew::tap { 'homebrew/homebrew-php': }

  package { 'imagemagick': ensure => installed }
  package { 'php54': ensure => installed }
  package { 'php54-intl': ensure => installed }
  package { 'php54-memcache': ensure => installed }
  package { 'php54-xdebug': ensure => installed }
  package { 'phpunit': ensure => installed }

  boxen::project { 'neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => "/Users/${::boxen_user}/Development/Sites/neighbourly"
  }
}
