class global::people::common::php {
  require global::folders
  require homebrew

  homebrew::tap { 'homebrew/dupes': }
  homebrew::tap { 'homebrew/homebrew-php': }

  # Install php 5.4
  include php::5_4

  include php::composer
  include memcached

  $version = '5.4.24'

  # Install a php version and set as the global default php
  class { 'php::global':
    version => $version
  }

  package { 'imagemagick': ensure => installed }

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
}
