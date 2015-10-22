class people::nathankot::login_items {
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

  osx_login_item { 'Mjolnir':
    name => 'Mjolnir',
    path => '/Applications/Mjolnir.app'
  }

}
