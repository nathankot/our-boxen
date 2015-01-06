class common::heroku {

  include heroku

  heroku::plugin { 'binstubs':
    source => 'https://github.com/tpope/heroku-binstubs.git'
  }

  heroku::plugin { 'wildcards':
    source => 'https://github.com/tpope/heroku-wildcards.git'
  }

  heroku::plugin { 'repo':
    source => 'https://github.com/heroku/heroku-repo.git'
  }

  heroku::plugin { 'heroku-config':
    source => 'https//github.com/ddollar/heroku-config.git'
  }

}
