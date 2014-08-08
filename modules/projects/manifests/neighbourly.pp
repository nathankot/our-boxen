class projects::neighbourly {
  include virtualbox
  include vagrant

  boxen::project { 'Neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => '/Users/${::boxen_user}/Development/Sites/neighbourly'
  }
}
