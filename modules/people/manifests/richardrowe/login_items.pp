class people::richardrowe::login_items {
  # Karabiner is automatically made a login item
  # by it's package.

  osx_login_item { 'Shortcat':
    name => 'Shortcat',
    path => '/Applications/Shortcat.app'
  }

  osx_login_item { 'Flux':
    name => 'Flux',
    path => '/Applications/Flux.app'
  }

  osx_login_item { 'Amethyst':
    name => 'Amethyst',
    path => '/Applications/Amethyst.app'
  }
}
