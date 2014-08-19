class common::utilities {

  include global::utilities::vim
  include tmux
  package { 'coreutils': ensure => installed }
  package { 'gpg': ensure => installed }
  package { 'gnupg': ensure => installed }
  package { 'gnupg2': ensure => installed }

  # Stuff that nathankot/dotfiles uses
  package { 'editorconfig': ensure => installed }
  package { 'tmux-mem-cpu-load': ensure => installed }
  package { 'ctags': ensure => installed }
  package { 'the_silver_searcher': ensure => installed }
  package { 'reattach-to-user-namespace':
    ensure          => installed,
    install_options => [ '--wrap-pbcopy-and-pbpaste' ]
  }

}
