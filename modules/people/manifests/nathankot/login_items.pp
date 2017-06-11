class people::nathankot::login_items {

  osx_login_item { 'Hammerspoon':
    name => 'Hammerspoon',
    path => '/Applications/Hammerspoon.app'
  }

  osx_login_item { 'Karabiner Elements':
    name => 'Karabiner Elements',
    path => '/Applications/Karabiner-Elements.app'
  }

  osx_login_item { 'Übersicht':
    name => 'Übersicht',
    path => '/Applications/Übersicht.app'
  }

}
