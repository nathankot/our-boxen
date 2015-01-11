class common::php {

  require homebrew

  homebrew::tap { 'homebrew/dupes':  }

  include php::5_4
  include php::5_5_16
  include php::composer
  include memcached

  package { 'imagemagick': ensure => installed  }

}
