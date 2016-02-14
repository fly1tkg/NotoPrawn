# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'noto_prawn/version'

Gem::Specification.new do |spec|
  spec.name          = "noto_prawn"
  spec.version       = NotoPrawn::VERSION
  spec.authors       = ["fly1tkg"]
  spec.email         = ["fly1tkg@gmail.com"]
  spec.summary       = 'NotoSans fonts for Prawn'
  spec.description   = 'NotoSans fonts for Prawn'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'

  spec.add_dependency 'activesupport'
  spec.add_dependency 'prawn'
end
