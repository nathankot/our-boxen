class people::nathankot {

  $home     = "/Users/${::boxen_user}"

  include people::nathankot::iterm
  include people::nathankot::karabiner
  include fish

  # Apps
  include chrome
  include firefox
  include appcleaner
  include caffeine
  include flux:beta
  include shortcat
  include alfred
  include amethyst
  include unarchiver

  # osx
  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::tap_to_click
  include osx::dock::autohide
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

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
