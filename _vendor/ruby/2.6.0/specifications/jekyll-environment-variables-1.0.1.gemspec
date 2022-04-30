# -*- encoding: utf-8 -*-
# stub: jekyll-environment-variables 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-environment-variables".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["iBug".freeze]
  s.date = "2019-09-03"
  s.description = "Access environment variables using Liquid tags with Jekyll".freeze
  s.homepage = "http://github.com/iBug/jekyll-environment-variables".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Access environment variables using Liquid tags with Jekyll".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.0", "< 5.x"])
    else
      s.add_dependency(%q<jekyll>.freeze, [">= 3.0", "< 5.x"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 3.0", "< 5.x"])
  end
end
