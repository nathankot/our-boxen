class projects::vend {
  require people::richardrowe::folders
  require homebrew
  require php

  include vagrant

  include php::composer

  package { 'imagemagick': ensure => installed }

  $version = '5.4.24'

  php::local { "/Users/${::boxen_user}/Development/Sites/vend":
    version => $version
  }

  php::extension::intl { "intl for ${version}":
    php => $version
  }

  php::extension::memcache { "memcache for ${version}":
    php => $version
  }

  php::extension::xdebug { "xdebug for ${version}":
    php => $version
  }

  package { 'phpunit':
    ensure => installed
  }

  boxen::project { 'vend':
    mysql   => [],
    source  => 'vend/vend',
    dir     => "/Users/${::boxen_user}/Development/Sites/vend"
  }
}
