class people::nathankot::utilities {

  $home = "/Users/${::boxen_user}"

  include global::utilities::fish
  include global::utilities::emacs
  include global::utilities::tor

  package { 'pass': ensure        => installed }
  # package { 'todo-txt': ensure    => installed }
  package { 'ledger': ensure      => installed }
  package { 'namebench': ensure   => installed }
  package { 'bfg': ensure         => installed }
  package { 'ngrok': ensure       => installed }
  package { 'transcrypt': ensure  => installed }

  package { 'weechat':
    ensure          => installed,
    install_options => [ 
      '--with-perl',
      '--with-ruby'
    ]
  }

  nodejs::module { 'jsxhint': node_version => 'v0.10' }

  # Encrypted password store
  repository { "${home}/.password-store":
    source   => 'nathankot/pass',
    ensure   => 'origin/master',
    provider => 'git'
  }

}
