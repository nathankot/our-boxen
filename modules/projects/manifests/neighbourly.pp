class projects::neighbourly {
  require people::nathankot::folders

  include virtualbox
  include vagrant

  package { 'composer': ensure => installed }

  homebrew::tap { 'homebrew/homebrew-php': }

  boxen::project { 'Neighbourly':
    mysql   => [],
    source  => 'shophq/neighbourly',
    dir     => '/Users/${::boxen_user}/Development/Sites/neighbourly'
  }
}
