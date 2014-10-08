class common::php {
  require homebrew

  homebrew::tap { 'homebrew/dupes':  }
  homebrew::tap { 'homebrew/homebrew-php':  }

  include php::5_4
  include php::5_5_16
  include php::composer
  include memcached

  package { 'imagemagick': ensure => installed  }

  package { 'phpunit':
    ensure =>  installed
  }
}
