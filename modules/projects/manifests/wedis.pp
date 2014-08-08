class projects::wedis {

  package { 'imagemagick': ensure => installed }
  package { 'php54': ensure => installed }
  package { 'php54-intl': ensure => installed }
  package { 'php54-memcache': ensure => installed }
  package { 'php54-xdebug': ensure => installed }
  package { 'phpunit': ensure => installed }

  boxen::project { 'Wedis':
    nodejs  => '0.10.29',
    source  => 'nathankot/wed.is',
    mongodb => true,
    dir     => '/Users/${::boxen_user}/Development/Sites/wed.is'
  }
}
