class projects::neighbourly {

  require people::nathankot::folders
  require common::php

  include vagrant

  package { 'elasticsearch11': ensure  => installed }

  $version = '5.5.0'

  php::local { "/Users/${::boxen_user}/Development/Sites/neighbourly":
    version => $version
  }

  php::extension::memcache { "memcache for ${version}":
    php =>  $version
  }

  boxen::project { 'neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => "/Users/${::boxen_user}/Development/Sites/neighbourly"
  }

}
