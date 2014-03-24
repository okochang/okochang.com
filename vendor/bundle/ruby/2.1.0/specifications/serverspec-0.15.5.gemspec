# -*- encoding: utf-8 -*-
# stub: serverspec 0.15.5 ruby lib

Gem::Specification.new do |s|
  s.name = "serverspec"
  s.version = "0.15.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Gosuke Miyashita"]
  s.date = "2014-03-17"
  s.description = "RSpec tests for your servers configured by Puppet, Chef or anything else"
  s.email = ["gosukenator@gmail.com"]
  s.executables = ["serverspec-init"]
  s.files = ["bin/serverspec-init"]
  s.homepage = "http://serverspec.org/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.1"
  s.summary = "RSpec tests for your servers configured by Puppet, Chef or anything else"

  s.installed_by_version = "2.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-ssh>, [">= 0"])
      s.add_runtime_dependency(%q<rspec>, ["~> 2.13"])
      s.add_runtime_dependency(%q<highline>, [">= 0"])
      s.add_runtime_dependency(%q<specinfra>, [">= 0.7.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<octorelease>, [">= 0"])
    else
      s.add_dependency(%q<net-ssh>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.13"])
      s.add_dependency(%q<highline>, [">= 0"])
      s.add_dependency(%q<specinfra>, [">= 0.7.1"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<octorelease>, [">= 0"])
    end
  else
    s.add_dependency(%q<net-ssh>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.13"])
    s.add_dependency(%q<highline>, [">= 0"])
    s.add_dependency(%q<specinfra>, [">= 0.7.1"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<octorelease>, [">= 0"])
  end
end
