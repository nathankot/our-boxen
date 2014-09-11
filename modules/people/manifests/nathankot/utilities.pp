class people::nathankot::utilities {

  package { 'pass': ensure       => installed }
  package { 'todo-txt': ensure   => installed }
  package { 'ledger': ensure     => installed }
  package { 'namebench': ensure  => installed }
  package { 'newsbeuter': ensure => installed }

  # Encrypted password store
  repository { "${home}/.password-store":
    source  => 'nathankot/pass'
  }

}
