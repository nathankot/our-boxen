class common::applications::mjolnir {

  require common::lua

  package { 'Mjolnir':
    ensure => installed,
    source => 'https://github.com/sdegutis/mjolnir/releases/download/0.4.3/Mjolnir-0.4.3.zip',
    provider => compressed_app
  }

  # Required for Mjolnir
  common::lua::rock { 'mjolnir.hotkey-0.3': }
  common::lua::rock { 'mjolnir.application-0.3': }
  common::lua::rock { 'mjolnir.alert-0.2': }
  common::lua::rock { 'mjolnir.tiling-0.3.1': }
  common::lua::rock { 'mjolnir.lx.lockscreen-0.1': }

}
