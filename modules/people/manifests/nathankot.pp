class people::nathankot {

  $home     = "/Users/${::boxen_user}"

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
  include flux:beta
  include shortcat
  include alfred
  include amethyst
  include unarchiver

  # Binaries
  include tmux
  package { 'coreutils': ensure => installed }
  package { 'findutils': ensure => installed }
  package { 'gpg': ensure => installed }
  package { 'gnupg': ensure => installed }
  package { 'gnupg2': ensure => installed }
  package { 'pass': ensure => installed }
  package { 'curl-ca-bundle': ensure => installed }
  package { 'fzf': ensure => installed }
  package { 'ack': ensure => installed }
  package { 'the_silver_searcher': ensure => installed }
  package { 'ctags': ensure => installed }
  package { 'todo-txt': ensure => installed }
  package { 'ledger': ensure => installed }
  package { 'wget': ensure => installed }
  package { 'namebench': ensure => installed }

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

  heroku::plugin { 'config':
    source => 'https//github.com/ddollar/heroku-config.git'
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
  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::tap_to_click
  include osx::dock::autohide
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  # Folders
  $development = "${home}/Development"
  $sites = "${development}/Sites"
  $apps = "${development}/Apps"
  $packages = "${development}/Packages"
  $designs = "${development}/Design"

  file { $development: ensure => directory }
  file { $sites: ensure => directory }
  file { $apps: ensure => directory }
  file { $packages: ensure => directory }
  file { $designs: ensure => directory }

  # Encrypted password store
  repository { "${home}/.password-store"
    source  => 'nathankot/pass'
  }

}
