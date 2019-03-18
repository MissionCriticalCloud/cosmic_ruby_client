# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cosmic_ruby_client/version'

Gem::Specification.new do |spec|
  spec.name          = 'cosmic_ruby_client'
  spec.version       = CosmicRubyClient::VERSION
  spec.authors       = ['Daan de Goede']
  spec.email         = ['ddegoede@schubergphilis.com']
  spec.description   = %q{A Ruby client for Cosmic's API, including a simple CLI.}
  spec.summary       = %q{A Ruby client for Cosmic's API.}
  spec.licenses      = ['Apache-2.0']
  spec.homepage      = 'https://www.github.com/missioncriticalcloud/cosmic'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
