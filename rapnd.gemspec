# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rapnd-mikec54088"
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Josh Symonds"]
  s.date = "2012-05-22"
  s.description = "redis APN daemon"
  s.email = "veraticus@gmail.com"
  s.executables = ["rapnd"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "bin/rapnd",
    "lib/rapnd.rb",
    "lib/rapnd/config.rb",
    "lib/rapnd/daemon.rb",
    "lib/rapnd/notification.rb",
    "rapnd.gemspec",
    "spec/config_spec.rb",
    "spec/daemon_spec.rb",
    "spec/notification_spec.rb",
    "spec/rapnd_spec.rb",
    "spec/redis-test.conf",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/Veraticus/rapnd"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "redis APN daemon"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hiredis>, ["~> 0.4.4"])
      s.add_runtime_dependency(%q<redis>, ["~> 2.2.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<daemons>, ["= 1.1.6"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<hiredis>, ["~> 0.4.4"])
      s.add_dependency(%q<redis>, ["~> 2.2.2"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<daemons>, ["= 1.1.6"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<hiredis>, ["~> 0.4.4"])
    s.add_dependency(%q<redis>, ["~> 2.2.2"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<daemons>, ["= 1.1.6"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

