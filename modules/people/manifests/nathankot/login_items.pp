class people::nathankot::login_items {

  osx_login_item { 'Shortcat':
    name => 'Shortcat',
    path => '/Applications/Shortcat.app'
  }

  osx_login_item { 'Mjolnir':
    name => 'Mjolnir',
    path => '/Applications/Mjolnir.app'
  }

}
