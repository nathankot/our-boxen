# Include this to bootstrap some common applications
class common::applications {

  include global::applications::unarchiver
  include global::applications::alfred
  include iterm2::stable
  include karabiner
  include chrome
  include firefox
  include appcleaner
  include caffeine
  include dropbox
  include googledrive
  include skype

}
