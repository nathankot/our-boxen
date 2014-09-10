class projects::vend {
  require people::richardrowe::folders
  require homebrew
  require php

  include vagrant

  include php::composer

  $version = '5.4.24'

  php::local { "/Users/${::boxen_user}/Development/Sites/vend":
    version => $version
  }

  boxen::project { 'vend':
    mysql   => [],
    source  => 'vend/vend',
    dir     => "/Users/${::boxen_user}/Development/Sites/vend"
  }
}
