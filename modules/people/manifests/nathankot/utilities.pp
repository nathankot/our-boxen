class people::nathankot::utilities {

  package { 'pass': ensure        => installed }
  package { 'todo-txt': ensure    => installed }
  package { 'ledger': ensure      => installed }
  package { 'namebench': ensure   => installed }
  package { 'newsbeuter': ensure  => installed }
  package { 'bfg': ensure         => installed }
  package { 'keybase': ensure     => installed }
  package { 'qcachegrind': ensure => absent }
  package { 'graphviz': ensure    => absent }

  # Encrypted password store
  repository { "${home}/.password-store":
    source  => 'nathankot/pass'
  }

}
