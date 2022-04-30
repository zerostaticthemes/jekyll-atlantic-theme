Gem::Specification.new do |s|
  s.name        = "jekyll-environment-variables"
  s.version     = "1.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['iBug']
  s.homepage    = 'http://github.com/iBug/jekyll-environment-variables'
  s.summary     = 'Access environment variables using Liquid tags with Jekyll'
  s.description = s.summary
  s.licenses    = ['MIT']
  s.date        = Time.now
  s.files       = `git ls-files -z`.split("\0")

  s.add_runtime_dependency 'jekyll', '>= 3.0', '< 5.x'
  s.required_rubygems_version = '>= 1.3.6'
end
