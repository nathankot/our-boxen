class people::nathankot::node {

  nodejs::module { 'bower':
    node_version => 'v0.10'
  }

  nodejs::version { 'v0.11.13': }

}
