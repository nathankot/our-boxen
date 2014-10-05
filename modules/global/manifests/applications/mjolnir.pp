class global::applications::mjolnir {

  require common::lua

  package { 'Mjolnir':
    ensure => installed,
    source => 'https://github.com/sdegutis/mjolnir/releases/download/0.4.2/Mjolnir-0.4.2.zip',
    provider => compressed_app
  }

  # Required for Mjolnir
  common::lua::rock { 'mjolnir.hotkey': }
  common::lua::rock { 'mjolnir.application': }
  common::lua::rock { 'mjolnir.alert': }
  common::lua::rock { 'mjolnir.lb.spotify': }
  common::lua::rock { 'mjolnir.tiling': }

}
