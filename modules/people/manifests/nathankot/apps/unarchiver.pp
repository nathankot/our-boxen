class people::nathankot::apps::unarchiver {
  package { 'The Unarchiver':
    ensure   => installed,
    source   => 'http://theunarchiver.googlecode.com/files/TheUnarchiver3.9.1.zip',
    provider => compressed_app
  }
}
