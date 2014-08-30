# NK's personal stuff
class people::richardrowe {

  $home = "/Users/${::boxen_user}"

  include fish

  # Apps
  include common::applications
  include people::richardrowe::applications

  # App Config
  include common::config::iterm
  include common::config::karabiner
  include common::config::karabiner::remap

  # Login items
  include common::login_items
  include people::richardrowe::login_items

  # Folder Structure
  include people::richardrowe::folders

  # Projects

  # OSX Settings
  include common::osx

  # Utilities
  include common::utilities
  include people::richardrowe::utilities

  # PHP
  include common::php

  # Npm
  include common::node
  include people::richardrowe::node

  # Ruby
  include common::ruby
  include people::richardrowe::ruby

  # Python
  include common::python

}
