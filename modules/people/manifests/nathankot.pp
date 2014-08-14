# NK's personal stuff
class people::nathankot {

  $home     = "/Users/${::boxen_user}"

  include people::nathankot::folders

  include people::nathankot::iterm
  include people::nathankot::karabiner
  include fish

  # Projects
  include projects::wedis
  include projects::neighbourly

  # Apps
  include chrome
  include firefox
  include appcleaner
  include caffeine
  include flux
  include shortcat
  include alfred
  include people::nathankot::amethyst
  include people::nathankot::unarchiver
  include people::nathankot::kaleidoscope
  include transmission
  include mongohub

  # Binaries
  include tmux
  package { 'coreutils': ensure => installed }
  package { 'gpg': ensure => installed }
  package { 'gnupg': ensure => installed }
  package { 'gnupg2': ensure => installed }
  package { 'pass': ensure => installed }
  package { 'fzf': ensure => installed }
  package { 'the_silver_searcher': ensure => installed }
  package { 'ctags': ensure => installed }
  package { 'todo-txt': ensure => installed }
  package { 'ledger': ensure => installed }
  package { 'namebench': ensure => installed }
  package { 'tmux-mem-cpu-load': ensure => installed }

  package { 'reattach-to-user-namespace':
    ensure          => installed,
    install_options => [ '--wrap-pbcopy-and-pbpaste' ]
  }

  package { 'macvim':
    ensure          => installed,
    install_options => [
      '--with-cscope',
      '--with-lua',
      '--HEAD',
      '--override-system-vim'
    ]
  }

  # Heroku
  include heroku

  heroku::plugin { 'binstubs':
    source => 'https://github.com/tpope/heroku-binstubs.git'
  }

  heroku::plugin { 'wildcards':
    source => 'https://github.com/tpope/heroku-wildcards.git'
  }

  heroku::plugin { 'repo':
    source => 'https://github.com/heroku/heroku-repo.git'
  }

  # Npm
  nodejs::module { 'ultra-repl':
    node_version => 'v0.10'
  }

  nodejs::module { 'bower':
    node_version => 'v0.10'
  }

  # osx
  file { '/etc/launchd.conf':
    ensure  => 'present',
    content => template('people/nathankot/launchd.conf'),
    group   => 'wheel',
    owner   => 'root'
  }

  file { '/etc/sysctl.conf':
    ensure  => 'present',
    content => template('people/nathankot/sysctl.conf'),
    group   => 'wheel',
    owner   => 'root'
  }

  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::tap_to_click
  include osx::dock::autohide
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control
  include osx::global::natural_mouse_scrolling
  include osx::finder::unhide_library

  boxen::osx_defaults { 'Disable dashboard':
    user   => $::boxen_user,
    key    => 'mcx-disabled',
    domain => 'com.apple.dashboard',
    value  => true
  }

  boxen::osx_defaults { 'Multi-list view default':
    user   => $::boxen_user,
    key    => 'FXPreferredViewStyle',
    domain => 'com.apple.Finder',
    value  => 'clmv'
  }

  boxen::osx_defaults { 'Require password on screensaver':
    user   => $::boxen_user,
    key    => 'askForPassword',
    domain => 'com.apple.screensaver',
    value  => 1
  }

  boxen::osx_defaults { 'Screensaver password delay':
    user   => $::boxen_user,
    key    => 'askForPasswordDelay',
    domain => 'com.apple.screensaver',
    value  => 0
  }

  osx_login_item { 'Amethyst':
    name => 'Amethyst',
    path => '/Applications/Amethyst.app'
  }

  osx_login_item { 'Dropbox':
    name => 'Dropbox',
    path => '/Applications/Dropbox.app'
  }

  osx_login_item { 'Google Drive':
    name => 'Google Drive',
    path => '/Applications/Google\ Drive.app'
  }

  osx_login_item { 'Shortcat':
    name => 'Shortcat',
    path => '/Applications/Shortcat.app'
  }

  osx_login_item { 'Flux':
    name => 'Flux',
    path => '/Applications/Flux.app'
  }

  osx_login_item { 'Alfred':
    name => 'Alfred',
    path => '/Applications/Alfred\ 2.app'
  }

  # node
  include nodejs::v0_10

  # Ruby
  ruby::version { '2.0.0-p481': }
  class { 'ruby::global': version => '2.1.2' }

  # Gems
  ruby_gem { 'lunchy':
    gem          => 'lunchy',
    version      => '~> 0.8',
    ruby_version => '*'
  }

  ruby_gem { 'mailcatcher':
    gem          => 'mailcatcher',
    version      => '~> 0.5',
    ruby_version => '*'
  }

  ruby_gem { 'ghi':
    gem          => 'ghi',
    version      => '~> 0.9',
    ruby_version => '*'
  }

  ruby_gem { 'tmuxinator':
    gem          => 'tmuxinator',
    version      => '~> 0.6',
    ruby_version => '*'
  }

  ruby_gem { 'rubocop':
    gem          => 'rubocop',
    version      => '~> 0.24',
    ruby_version => '*'
  }

  ruby_gem { 'timetrap':
    gem          => 'timetrap',
    version      => '~> 1.8',
    ruby_version => '*'
  }

  ruby_gem { 'powder':
    gem          => 'powder',
    version      => '~> 0.2',
    ruby_version => '*'
  }

  ruby_gem { 'reckon':
    gem          => 'reckon',
    version      => '~> 0.3',
    ruby_version => '*'
  }

  # Python
  include python

  # Encrypted password store
  repository { "${home}/.password-store":
    source  => 'nathankot/pass'
  }

}
