class people::nathankot::bins {

  include tmux
  package { 'coreutils': ensure => installed }
  package { 'gpg': ensure => installed }
  package { 'gnupg': ensure => installed }
  package { 'gnupg2': ensure => installed }
  package { 'pass': ensure => installed }
  package { 'fzf': ensure => installed }
  package { 'the_silver_searcher': ensure => installed }
  package { 'ctags': ensure => installed }
  package { 'todo-txt': ensure => installed }
  package { 'ledger': ensure => installed }
  package { 'namebench': ensure => installed }
  package { 'tmux-mem-cpu-load': ensure => installed }

  package { 'reattach-to-user-namespace':
    ensure          => installed,
    install_options => [ '--wrap-pbcopy-and-pbpaste' ]
  }

  package { 'macvim':
    ensure          => installed,
    install_options => [
      '--with-cscope',
      '--with-lua',
      '--HEAD',
      '--override-system-vim'
    ]
  }

}
