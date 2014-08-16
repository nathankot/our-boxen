# NK's personal stuff
class people::nathankot {

  $home = "/Users/${::boxen_user}"

  include fish

  # Folder Structure
  include global::folders

  # Projects
  include projects::wedis
  include projects::neighbourly

  # Apps
  include people::nathankot::apps

  # OSX Settings
  include people::nathankot::osx

  # Utilities
  include people::nathankot::utils

  # Heroku
  include people::nathankot::heroku

  # Npm
  include people::nathankot::node

  # Ruby
  include people::nathankot::ruby

  # Python
  include people::nathankot::python

  # Encrypted password store
  repository { "${home}/.password-store":
    source  => 'nathankot/pass'
  }

}
