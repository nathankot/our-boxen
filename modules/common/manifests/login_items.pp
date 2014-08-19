class common::login_items {

  include karabiner::login_item

  osx_login_item { 'Dropbox':
    name => 'Dropbox',
    path => '/Applications/Dropbox.app'
  }

  osx_login_item { 'Google Drive':
    name => 'Google Drive',
    path => '/Applications/Google\ Drive.app'
  }

  osx_login_item { 'Alfred':
    name => 'Alfred',
    path => '/Applications/Alfred\ 2.app'
  }

}
