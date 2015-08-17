class people::nathankot::folders {

  $home     = "/Users/${::boxen_user}"

  # Folders
  $development = "${home}/Development"
  $designs = "${home}/Design"

  file { $development: ensure => directory }

  file { $designs:
    ensure  => directory,
    require => File[$development]
  }

}
