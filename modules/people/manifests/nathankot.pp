# NK's personal stuff
class people::nathankot {

  $home = "/Users/${::boxen_user}"

  include fish

  # Apps
  include common::applications
  include flux
  include shortcat
  include transmission
  include global::applications::amethyst
  include global::applications::kaleidoscope
  include global::applications::mongohub

  # Folder Structure
  include people::nathankot::folders

  # Projects
  include projects::wedis
  include projects::neighbourly

  # OSX Settings
  include common::osx
  include common::login_items
  include people::nathankot::login_items

  # Utilities
  include common::utilities
  include people::nathankot::utilities

  # Heroku
  include common::heroku

  # Npm
  include common::node
  include people::nathankot::node

  # Ruby
  include common::ruby
  include people::nathankot::ruby

  # Python
  include common::python

}
