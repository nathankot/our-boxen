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
  include global::people::common::apps

  # OSX Settings
  include global::people::common::osx

  # Utilities
  include global::people::common::utils

  # Heroku
  include global::people::common::heroku

  # Npm
  include global::people::common::node

  # Ruby
  include global::people::common::ruby

  # Python
  include global::people::common::python

  # Encrypted password store
  repository { "${home}/.password-store":
    source  => 'nathankot/pass'
  }

}
