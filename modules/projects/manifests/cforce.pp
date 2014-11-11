class projects::cforce {

  require people::nathankot::folders
  require common::php

  $version = '5.5.0'

  php::local {
    "/Users/${::boxen_user}/Development/Sites/unlimitededitions.co.nz":
    version => $version
  }

}
