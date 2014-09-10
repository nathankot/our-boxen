class projects::neighbourly {

  require people::nathankot::folders
  require common::php

  include vagrant

  package { 'elasticsearch11': ensure  => installed }

  $version = '5.4.24'

  php::local { "/Users/${::boxen_user}/Development/Sites/neighbourly":
    version => $version
  }

  boxen::project { 'neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => "/Users/${::boxen_user}/Development/Sites/neighbourly"
  }

}
