# NK's personal stuff
class people::nathankot {

  $home = "/Users/${::boxen_user}"
  $development = "${home}/Development"
  $designs = "${home}/Design"

  # Folders I use
  file { $development: ensure => directory }
  file { $designs: ensure  => directory }

  # Apps
  include common::applications::unarchiver
  include iterm2::dev
  include karabiner
  include chrome
  include appcleaner
  include caffeine
  include dropbox
  include googledrive
  include flux
  include shortcat
  include common::applications::mjolnir

  # App Config
  include common::config::iterm
  include common::config::karabiner

  # Login items
  include common::login_items
  include people::nathankot::login_items

  # OSX Settings
  include common::osx

  # Utilities
  package { 'tmux': ensure => installed }
  package { 'tmux-mem-cpu-load': ensure => installed }
  package { 'coreutils': ensure => installed }
  package { 'gnupg': ensure => installed }
  package { 'gnupg2': ensure => installed }
  package { 'cask': ensure => installed }
  package { 'editorconfig': ensure => installed }
  package { 'the_silver_searcher': ensure => installed }
  package { 'ctags': ensure => installed }
  package { 'reattach-to-user-namespace': ensure => installed, install_options => [ '--wrap-pbcopy-and-pbpaste' ] }
  package { 'wget': ensure => installed }
  package { 'httpie': ensure => installed }
  package { 'pass': ensure => installed }
  package { 'ledger': ensure => installed }
  package { 'hub': ensure => installed }

  package { 'docker': ensure => installed }
  package { 'docker-compose': ensure => installed }
  package { 'docker-machine': ensure => installed }

  include common::utilities::fish
  include common::utilities::emacs

  # Install env's, but don't install versions yet
  package { 'nodenv': ensure => installed }
  package { 'node-build': ensure => installed, install_options => [ '--HEAD' ] }
  package { 'rbenv': ensure => installed }

  # Go
  package { 'go': ensure => installed }
  package { 'glide': ensure => installed }

  # Python
  package { 'python3': ensure => installed }

  # Ruby dependencies
  class { 'ruby::global': version => '2.1.2' }
  ruby_gem { 'tmuxinator': gem => 'tmuxinator', version => '~> 0.6.11', ruby_version => '*' }
  ruby_gem { 'powder': gem => 'powder', version => '~> 0.2', ruby_version => '*' }

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
