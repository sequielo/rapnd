# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sequielo-rapnd}
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Exequiel Curia"]
  s.date = %q{2012-09-28}
  s.default_executable = %q{rapnd}
  s.description = %q{redis APN daemon}
  s.email = %q{dev@sequielo.com.ar}
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
    "sequielo-rapnd.gemspec",
    "spec/config_spec.rb",
    "spec/daemon_spec.rb",
    "spec/notification_spec.rb",
    "spec/rapnd_spec.rb",
    "spec/redis-test.conf",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/sequielo/rapnd}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{redis APN daemon}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hiredis>, ["~> 0.4.4"])
      s.add_runtime_dependency(%q<redis>, ["~> 2.2.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<daemons>, [">= 1.1.6"])
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
      s.add_dependency(%q<daemons>, [">= 1.1.6"])
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
    s.add_dependency(%q<daemons>, [">= 1.1.6"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

