class people::richardrowe::utilities {

  package { 'pass': ensure => installed }
  package { 'todo-txt': ensure => installed }
  package { 'namebench': ensure => installed }
  package { 'fzf': ensure => installed }

  # Encrypted password store
  repository { "${home}/.password-store":
    source  => 'richardrowe/pass'
  }

}
