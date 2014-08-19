class people::nathankot::ruby {
  ruby_gem { 'mailcatcher':
    gem          => 'mailcatcher',
    version      => '~> 0.5',
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

  ruby_gem { 'reckon':
    gem          => 'reckon',
    version      => '~> 0.3',
    ruby_version => '*'
  }
}
