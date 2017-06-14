class common::applications::unarchiver {
  package { 'The Unarchiver':
    ensure   => installed,
    source   => 'http://unarchiver.c3.cx/downloads/TheUnarchiver3.11.1.zip',
    provider => compressed_app
  }
}
