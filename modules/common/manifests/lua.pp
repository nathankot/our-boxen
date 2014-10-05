class common::lua {
  include homebrew
  include common::lua::luarocks
  package { 'lua': }

  package { 'lua52':
    require => Package[lua]
  }

  exec { 'brew link lua52 --overwrite':
    require => Package[lua52]
  }
}

class common::lua::luarocks {
  require common::lua
  package { 'luarocks': 
    install_options => ['--with-lua52']
  }
}

define common::lua::rock (
  $ensure = 'present',
  $source = 'absent',
  $provider = 'default'
) {
  require common::lua::luarocks

  if $name =~ /\-(\d|\.)+$/ {
    $real_name = regsubst($name,'^(.*)-(\d|\.)+$','\1')
    $rock_version = regsubst($name,'^(.*)-(\d+(\d|\.)+)$','\2')
  } else {
    $real_name = $name
  }

  $cache_dir = '/var/lib/puppet/modules/luarocks_cache'

  if $source != 'absent' {
    if $ensure != 'absent' {
      require luarocks::rock::cachedir
      exec{"get-rock-$name":
        command => "/usr/bin/wget -O ${cachedir}/$name.rock $source",
        creates => "${cachedir}/$name.rock",
      }
    } else {
      file{"${cachedir}/$name.rock":
        ensure => 'absent';
      }
    }
  }

  if $rock_version {
      $rock_version_str = "${rock_version}"
      $rock_version_check_str = $rock_version
  } else {
      $rock_version_check_str = '.*'
  }

  if $ensure == 'present' {
      if $source != 'absent' {
        $rock_cmd = "luarocks install ${cachedir}/${name}.rock"
      } else {
        $rock_cmd = "luarocks install ${real_name} ${rock_version_str}"
      }
  } else {
      $rock_cmd = "luarocks remove ${real_name} ${rock_version_str}"
  }

  exec{"manage_rock_${name}":
      command => $rock_cmd
  }

  $rock_cmd_check_str = "luarocks list | egrep -A1 '^${real_name}\\>' | tail -1 | egrep '\\<${rock_version_check_str}\\> \\(installed\\)'"

  if $ensure == 'present' {
      Exec["manage_rock_${name}"]{
         unless => $rock_cmd_check_str
      }
  } else {
      Exec["manage_rock_${name}"]{
         onlyif => $rock_cmd_check_str
      }
  }
}
