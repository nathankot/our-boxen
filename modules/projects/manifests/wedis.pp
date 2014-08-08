class projects::wedis {
  boxen::project { 'Wedis':
    nodejs  => '0.10.29',
    source  => 'nathankot/wed.is',
    mongodb => true,
    dir     => '/Users/${::boxen_user}/Development/Sites/wed.is'
  }
}
