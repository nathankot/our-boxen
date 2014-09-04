class global::applications::alfred {

  package { 'Alfred 2':
    ensure   => present,
    source   => 'https://cachefly.alfredapp.com/Alfred_2.4_279.zip',
    provider => compressed_app
  }

}