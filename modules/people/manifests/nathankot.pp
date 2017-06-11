# NK's personal stuff
class people::nathankot {

  $home = "/Users/${::boxen_user}"
  $development = "${home}/Development"
  $development_src = "${home}/Development/src"
  $development_bin = "${home}/Development/bin"
  $designs = "${home}/Design"

  # Folders I use
  file { $development: ensure => directory }
  file { $development_src: ensure => directory, require => File[$development] }
  file { $development_bin: ensure => directory, require => File[$development] }
  file { $designs: ensure  => directory }

  # Apps
  include common::applications::unarchiver
  include common::applications::iterm
  include chrome
  include appcleaner
  include caffeine
  include dropbox
  include googledrive

  # Login items
  include common::login_items
  include people::nathankot::login_items

  # OSX Settings
  include common::osx

  # Utilities
  package { 'aspell': ensure => installed }
  package { 'carthage': ensure => installed }
  package { 'cask': ensure => installed }
  package { 'coreutils': ensure => installed }
  package { 'docker': ensure => installed }
  package { 'docker-compose': ensure => installed }
  package { 'docker-machine': ensure => installed }
  package { 'editorconfig': ensure => installed }
  package { 'gnupg': ensure => installed }
  package { 'pinentry-mac': ensure => installed }
  package { 'icdiff': ensure => installed }
  package { 'httpie': ensure => installed }
  package { 'hub': ensure => installed }
  package { 'jq': ensure => installed }
  package { 'ledger': ensure => installed }
  package { 'libtool': ensure => installed }
  package { 'mcrypt': ensure => installed }
  package { 'pass': ensure => installed }
  package { 'reattach-to-user-namespace': ensure => installed, install_options => [ '--wrap-pbcopy-and-pbpaste' ] }
  package { 'spark': ensure => installed }
  package { 'the_silver_searcher': ensure => installed }
  package { 'tmux': ensure => installed }
  package { 'tmux-mem-cpu-load': ensure => installed }
  package { 'tor': ensure => installed }
  package { 'transcrypt': ensure => installed }
  package { 'watch': ensure => installed }
  package { 'wget': ensure => installed }
  package { 'x264': ensure => installed }

  include common::utilities::fish
  include common::utilities::emacs

  # Databases
  package { 'postgresql': ensure => installed }
  package { 'mongodb26': ensure => installed }
  package { 'mysql': ensure => installed }

  
  # Ruby
  include ruby # installs rbenv
  class { 'ruby::global': version => '2.2.2' }
  ruby::version { '2.3.1': }
  ruby::version { '1.9.3-p194': }

  # Node
  package { 'nodenv': ensure => installed }
  package { 'node-build': ensure => installed, install_options => [ '--HEAD' ] }

  # Go
  package { 'go': ensure => installed }
  package { 'glide': ensure => installed }

  # Python
  package { 'python': ensure => installed }
  package { 'python3': ensure => installed }

  # Encrypted password store
  repository { "${home}/.password-store":
    source   => 'nathankot/pass',
    ensure   => 'origin/master',
    provider => 'git'
  }

  # Emacs conf
  repository { "${home}/.emacs.d":
    source   => 'nathankot/dotemacs',
    ensure   => 'origin/master',
    provider => 'git'
  }

  # Dotfiles
  repository { "${home}/.dotfiles":
    source   => 'nathankot/dotfiles',
    ensure   => 'origin/master',
    provider => 'git'
  }

}
