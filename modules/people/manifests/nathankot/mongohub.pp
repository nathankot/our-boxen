class people::nathankot::mongohub {
  package { 'MongoHub':
    ensure   => installed,
    source   => 'https://mongohub.s3.amazonaws.com/MongoHub.zip',
    provider => compressed_app
  }
}
