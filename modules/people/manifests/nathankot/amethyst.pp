class people::nathankot::amethyst {
  package { 'Amethyst':
    ensure   => installed,
    source   => 'http://ianyh.com/amethyst/versions/Amethyst-0.8.6.zip',
    provider => compressed_app
  }
}
