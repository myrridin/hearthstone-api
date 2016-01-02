# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hearthstone_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'hearthstone-api'
  spec.version       = HearthstoneApi::VERSION
  spec.authors       = ['Thomas Hart II']
  spec.email         = ['myrridin@gmail.com']

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.homepage      = 'https://github.com/myrridin/hearthstone-api'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'guard', '~> 2.0'
  spec.add_development_dependency 'guard-rspec', '~> 4.0'
end
