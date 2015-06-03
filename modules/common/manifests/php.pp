class common::php {

  require homebrew

  homebrew::tap { 'homebrew/dupes':  }

  php::version { '5.4': }
  php::version { '5.5.16': }

  include php::composer
  include memcached

  package { 'imagemagick': ensure => installed  }

}
