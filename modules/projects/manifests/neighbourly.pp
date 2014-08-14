class projects::neighbourly {
  require global::folders
  require homebrew

  include virtualbox
  include vagrant

  homebrew::tap { 'homebrew/dupes': }
  homebrew::tap { 'homebrew/homebrew-php': }

  include php::5_4
  include php::composer
  include memcached

  package { 'imagemagick': ensure => installed }

  $version = '5.4.24'

  php::local { "/Users/${::boxen_user}/Development/Sites/neighbourly":
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

  boxen::project { 'neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => "/Users/${::boxen_user}/Development/Sites/neighbourly"
  }
}
