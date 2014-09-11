class global::applications::mjolnir {

  package { 'Mjolnir':
    ensure => installed,
    source => 'https://github.com/sdegutis/mjolnir/releases/download/0.4.2/Mjolnir-0.4.2.zip',
    provider => compressed_app
  }

}
