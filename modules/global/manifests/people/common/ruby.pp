class global::people::common::ruby {
  ruby::version { '2.0.0-p481': }
  class { 'ruby::global': version => '2.1.2' }

  # Gems
  ruby_gem { 'lunchy':
    gem          => 'lunchy',
    version      => '~> 0.8',
    ruby_version => '*'
  }

  ruby_gem { 'mailcatcher':
    gem          => 'mailcatcher',
    version      => '~> 0.5',
    ruby_version => '*'
  }

  ruby_gem { 'ghi':
    gem          => 'ghi',
    version      => '~> 0.9',
    ruby_version => '*'
  }

  ruby_gem { 'tmuxinator':
    gem          => 'tmuxinator',
    version      => '~> 0.6',
    ruby_version => '*'
  }

  ruby_gem { 'rubocop':
    gem          => 'rubocop',
    version      => '~> 0.24',
    ruby_version => '*'
  }

  ruby_gem { 'timetrap':
    gem          => 'timetrap',
    version      => '~> 1.8',
    ruby_version => '*'
  }

  ruby_gem { 'powder':
    gem          => 'powder',
    version      => '~> 0.2',
    ruby_version => '*'
  }

}
