class global::people::common::apps::kaleidoscope {
  package { 'Kaleidoscope':
    ensure   => installed,
    source   => 'http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.1.0-134.zip',
    provider => compressed_app
  }
}
