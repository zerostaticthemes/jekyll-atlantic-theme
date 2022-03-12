# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-postcss/version"

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name          = "jekyll-postcss"
  spec.version       = Jekyll::PostCss::VERSION
  spec.authors       = ["Mitchell Hanberg"]
  spec.email         = ["mitch@mitchellhanberg.com"]
  spec.summary       = "A PostCSS plugin for Jekyll."
  spec.description   = "A PostCSS plugin for Jekyll."
  spec.homepage      = "https://github.com/mhanberg/jekyll-postcss"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|spec|features)/!) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r!^exe/!) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "jekyll",
                                  ENV["JEKYLL_VERSION"] ? "~> #{ENV["JEKYLL_VERSION"]}" : ">= 2.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.5.1"
end
