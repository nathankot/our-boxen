class projects::wedis {

  require global::folders
  include heroku

  boxen::project { 'wed.is':
    nodejs  => 'v0.10',
    source  => 'nathankot/wed.is',
    mongodb => true,
    dir     => "/Users/${::boxen_user}/Development/Sites/wed.is"
  }
}
