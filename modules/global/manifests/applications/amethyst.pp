class global::applications::amethyst {
  package { 'Amethyst':
    ensure   => installed,
    source   => 'http://ianyh.com/amethyst/versions/Amethyst-0.8.6.zip',
    provider => compressed_app
  }

  osx_login_item { 'Amethyst':
    name => 'Amethyst',
    path => '/Applications/Amethyst.app'
  }
}