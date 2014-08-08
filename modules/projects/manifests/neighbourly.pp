class projects::neighbourly {
  include virtualbox
  include vagrant

  package { 'composer': ensure => installed }
  package { 'memcached': ensure => installed }

  boxen::project { 'Neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => '/Users/${::boxen_user}/Development/Sites/neighbourly'
  }
}
