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

# github "boxen", "3.13.0"
mod "puppet-boxen", "0.0.1", :git => "https://github.com/nathankot/puppet-boxen.git", :ref => "master"

# Support for default hiera data in modules

github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",    "0.0.10"
mod "puppet-dnsmasq", "0.0.1", :git => "https://github.com/boxen/puppet-dnsmasq.git", :ref => "high-sierra"
github "foreman",     "1.2.0"
# mod "gcc", "0.0.1", :git => "https://github.com/boxen/puppet-gcc.git", :ref => "abc7639"
mod "puppet-git", "0.0.1", :git => "https://github.com/webflo/puppet-git.git", :ref => "puppet-4"
github "go",          "2.1.0"
mod "puppet-homebrew", "0.0.1", :git => "https://github.com/boxen/puppet-homebrew.git", :ref => "high-sierra"
github "hub",         "1.4.5"
github "inifile",     "1.4.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.9.0"
mod "puppet-nodejs", "0.0.1", :git => "https://github.com/boxen/puppet-nodejs.git", :ref => "high-sierra"
github "openssl",     "1.0.0"
github "phantomjs",   "3.0.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.4.1"
mod "puppet-ruby", "0.0.1", :git => "https://github.com/boxen/puppet-ruby.git", :ref => "high-sierra"
github "stdlib",      "4.7.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# My personal modules

github 'osx',         "2.7.0"
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
