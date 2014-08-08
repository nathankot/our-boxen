class people::nathankot {

  $home     = "/Users/${::boxen_user}"

  include people::nathankot::iterm
  include people::nathankot::karabiner
  include fish

  # $my       = "${home}/my"
  # $dotfiles = "${my}/dotfiles"
  #
  # file { $my:
  #   ensure  => directory
  # }

  # repository { $dotfiles:
  #   source  => 'jbarnette/dotfiles',
  #   require => File[$my]
  # }
}
