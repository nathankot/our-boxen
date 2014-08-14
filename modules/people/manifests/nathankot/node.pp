class people::nathankot::node {
  nodejs::module { 'ultra-repl':
    node_version => 'v0.10'
  }

  nodejs::module { 'bower':
    node_version => 'v0.10'
  }

  # node
  include nodejs::v0_10
}
