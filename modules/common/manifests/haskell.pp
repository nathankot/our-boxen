class common::haskell {
  include haskell::platform
  haskell::cabal { 'hdevtools': }
  haskell::cabal { 'ghc-mod': }
}

class haskell::platform {
  require homebrew
  package { 'haskell-platform': }
}

define haskell::cabal (
  $ensure = present
) {
  require haskell::platform

  case $ensure {
    present: {
      exec { "cabal_install_${name}":
        command => "cabal install ${name}",
        unless  => "cabal list --simple-output --installed | grep -i -e ^${name}\$",
      }
    }

    default: {
      exec { "cabal_uninstall_${name}":
        command => "cabal uninstall ${name}",
        onlyif  => "cabal list --simple-output --installed | grep -i -e ^${name}\$",
      }
    }
  }
}
