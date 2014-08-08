class projects::wedis {

  require people::nathankot::folders

  boxen::project { 'wed.is':
    nodejs  => 'v0.10',
    source  => 'nathankot/wed.is',
    mongodb => true,
    dir     => "/Users/${::boxen_user}/Development/Sites/wed.is"
  }
}
