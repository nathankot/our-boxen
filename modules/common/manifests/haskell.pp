class common::haskell {
  include haskell::platform
  haskell::cabal { 'hdevtools': }
  haskell::cabal { 'ghc-mod': }
  haskell::cabal { 'hledger': }
  haskell::cabal { 'hoogle': }
  haskell::cabal { 'hspec': }
}

# STUBBED FOR NOW. If you're getting cabal install errors please 
# install haskell via their package first: https://www.haskell.org/platform/mac.html
class haskell::platform {
  haskell::cabal { 'cabal-install': }
}

# Allows requiring cabal packages, yay.
define haskell::cabal (
  $ensure = present
) {
  case $ensure {
    present: {
      exec { "cabal_install_${name}":
        command => "cabal update; cabal install ${name}",
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
