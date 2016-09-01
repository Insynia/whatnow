# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whatnow/version'

Gem::Specification.new do |spec|
  spec.name          = 'whatnow'
  spec.version       = Whatnow::VERSION
  spec.authors       = ['Terry Raimondo & Thibaut Roche']
  spec.email         = ['admin@insynia.fr']

  spec.summary       = %q{"What now ?!" is a review tool for your rails products.}
  spec.description   = %q{"What now ?!" Is a feedback system to integrate within your rails apps. Reviewers of your product can annotate your web pages with comments, replies etc..}
  spec.homepage      = 'https://github.com/Insynia/whatnow'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'rails', '~> 5.0.0', '>= 5.0.0.1'
  spec.add_runtime_dependency 'activerecord', '>= 4.0'
end
