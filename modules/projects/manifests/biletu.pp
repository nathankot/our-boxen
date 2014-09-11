class projects::biletu {

  require people::richardrowe::folders
  include heroku

  boxen::project { 'biletu':
    nodejs  => 'v0.10',
    source  => 'richardrowe/biletu',
    mongodb => true,
    dir     => "/Users/${::boxen_user}/Development/Sites/biletu"
  }
}