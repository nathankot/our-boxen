# NK's personal stuff
class people::nathankot {

  $home = "/Users/${::boxen_user}"

  include fish

  # Apps
  include common::applications
  include people::nathankot::applications

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
  include common::utilities
  include people::nathankot::utilities

  # Heroku
  include common::heroku

  # PHP
  include common::php

  # Npm
  include common::node
  include people::nathankot::node

  # Ruby
  include common::ruby
  include people::nathankot::ruby

  # Python
  include common::python

  # Haskell
  include common::haskell

  # Docker
  # include docker
  # include fig

  # Vagrant
  class { 'vagrant': version => '1.7.2' }
  vagrant::plugin { 'gatling-rsync': }

}
