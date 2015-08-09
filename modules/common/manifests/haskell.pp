class common::haskell {
  include haskell::platform
  haskell::cabal { 'ghc-mod': }
  haskell::cabal { 'hledger': }
  haskell::cabal { 'hoogle': }
  haskell::cabal { 'hspec': }
  haskell::cabal { 'hi': }
  haskell::cabal { 'stylish-haskell': }
  haskell::cabal { 'scientific': }
}

# STUBBED FOR NOW. If you're getting cabal install errors please 
# install haskell via their package first: https://www.haskell.org/platform/mac.html
class haskell::platform {
}

# Allows requiring cabal packages, yay.
define haskell::cabal (
  $ensure = present
) {
  case $ensure {
    present: {
      exec { "cabal_install_${name}":
        command => "cabal install ${name}",
        timeout => 1800,
        unless  => "cabal list --simple-output --installed 2>&1 | grep -ci ${name}",
      }
    }

    default: {
      exec { "cabal_uninstall_${name}":
        command => "cabal uninstall ${name}",
        onlyif  => "cabal list --simple-output --installed 2>&1 | grep -ci ${name}",
      }
    }
  }
}
