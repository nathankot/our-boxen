class global::folders {

  $home     = "/Users/richard"

  # Folders
  $development = "${home}/Development"
  $sites = "${development}/Sites"
  $apps = "${development}/Apps"
  $packages = "${development}/Packages"
  $designs = "${development}/Design"

  file { $development: ensure => directory }

  file { $sites:
    ensure  => directory,
    require => File[$development]
  }

  file { $apps:
    ensure  => directory,
    require => File[$development]
  }

  file { $packages:
    ensure  => directory,
    require => File[$development]
  }

  file { $designs:
    ensure  => directory,
    require => File[$development]
  }

}
