class projects::neighbourly {

  require people::nathankot::folders
  require common::php

  include vagrant

  package { 'elasticsearch11': ensure  => installed }

  boxen::project { 'neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => "/Users/${::boxen_user}/Development/Sites/neighbourly"
  }

}
