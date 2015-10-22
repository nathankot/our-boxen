# NK's personal stuff
class people::nathankot {

  $home = "/Users/${::boxen_user}"
  $development = "${home}/Development"
  $designs = "${home}/Design"

  # Folders I use
  file { $development: ensure => directory }
  file { $designs: ensure  => directory }

  # Apps
  include global::applications::unarchiver
  include iterm2::dev
  include karabiner
  include chrome
  include appcleaner
  include caffeine
  include dropbox
  include googledrive
  include skype
  include virtualbox
  include flux
  include shortcat
  include global::applications::mjolnir
  include global::applications::kaleidoscope

  # App Config
  include common::config::iterm
  include common::config::karabiner
  include common::config::karabiner::remap

  # Login items
  include common::login_items
  include people::nathankot::login_items

  # Folder Structure
  include people::nathankot::folders

  # OSX Settings
  include common::osx

  # Utilities
  include tmux
  package { 'tmux-mem-cpu-load': ensure => installed }
  package { 'coreutils': ensure => installed }
  package { 'gnupg': ensure => installed }
  package { 'gnupg2': ensure => installed }
  package { 'editorconfig': ensure => installed }
  package { 'the_silver_searcher': ensure => installed }
  package { 'ctags': ensure => installed }
  package { 'reattach-to-user-namespace': ensure => installed, install_options => [ '--wrap-pbcopy-and-pbpaste' ] }
  package { 'wget': ensure => installed }
  include global::utilities::fish
  include global::utilities::emacs
  package { 'pass': ensure        => installed }
  package { 'ledger': ensure      => installed }

  # Install env's, but don't install versions yet
  package { 'nodenv': }
  package { 'phpenv': }
  package { 'rbenv': }

  # Ruby dependencies
  class { 'ruby::global': version => '2.1.2' }
  ruby_gem { 'tmuxinator': gem => 'tmuxinator', version => '*', ruby_version => '*' }
  ruby_gem { 'ghi': gem => 'ghi', version => '*', ruby_version => '*' }
  ruby_gem { 'lunchy': gem => 'lunchy', version => '*', ruby_version => '*' }
  ruby_gem { 'powder': gem => '*', version => '~> 0.2', ruby_version => '*' }

  # Encrypted password store
  repository { "${home}/.password-store":
    source   => 'nathankot/pass',
    ensure   => 'origin/master',
    provider => 'git'
  }

}
