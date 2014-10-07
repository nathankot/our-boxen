class common::ruby {
  ruby::version { '2.0.0-p481': }
  class { 'ruby::global': version => '2.1.2' }

  ruby_gem { 'tmuxinator':
    gem          => 'tmuxinator',
    version      => '~> 0.6.8',
    ruby_version => '*'
  }

  ruby_gem { 'ghi':
    gem          => 'ghi',
    version      => '~> 0.9',
    ruby_version => '*'
  }

  ruby_gem { 'lunchy':
    gem          => 'lunchy',
    version      => '~> 0.8',
    ruby_version => '*'
  }

  ruby_gem { 'powder':
    gem          => 'powder',
    version      => '~> 0.2',
    ruby_version => '*'
  }
}
