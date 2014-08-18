# Personal configuration

class people::richardrowe {

  $home = "/Users/${::boxen_user}"

  include fish

  # Folder Structure
  include global::folders

  # Projects

  # Apps
  include global::people::common::apps

  # OSX Settings
  include global::people::common::osx

  # Utilities
  include global::people::common::utils

  # Npm
  include global::people::common::node

  # Ruby
  include global::people::common::ruby

  # PHP
  include global::people::common::php

  # Python
  include global::people::common::python

  # Encrypted password store
  repository { "${home}/.password-store":
    source  => 'richardrowe/pass'
  }

}
