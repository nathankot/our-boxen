# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.12.0"

# Support for default hiera data in modules

github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",    "0.0.7"
github "dnsmasq",     "2.0.2"
github "foreman",     "1.2.0"
github "gcc",         "3.0.2"
github "git",         "2.12.2"
github "go",          "2.1.0"
github "homebrew",    "2.1.0"
github "hub",         "1.4.4"
github "inifile",     "1.4.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.7.0"
github "nodejs",      "5.0.9"
github "openssl",     "1.0.0"
github "phantomjs",   "3.0.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.4.1"
github "ruby",        "8.5.4"
github "stdlib",      "4.7.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# My personal modules

github "iterm2",      "1.2.5"
github 'dropbox',     "1.3.0"
github 'osx',         "2.7.0"
github 'chrome',      "1.1.2"
github 'appcleaner',  "1.0.0"
github 'caffeine',    "1.0.0"
github 'shortcat',    "1.0.6"
github 'googledrive', "1.0.2"
github 'openssl',     "1.0.0"
github 'pow',         "2.1.0"
github "wget",        "1.0.1"
github "autoconf",    "1.0.0"
github "libtool",     "1.0.0"
github "pcre",        "1.0.0"
github "libpng",      "1.0.0"
github "memcached",   "2.0.0"
github "dash",        "1.0.0"
github "redis",       "3.1.0"
github "sysctl",      "1.0.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
# github "elasticsearch", "2.8.0"
# github "mysql",         "2.0.1"
# github "postgresql",  "4.0.1"
# github "redis",       "3.1.0"
# github "sysctl",      "1.0.1"
