# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'precision/version'

Gem::Specification.new do |spec|
  spec.name          = "precision"
  spec.version       = Precision::VERSION
  spec.authors       = ["Sean Devine"]
  spec.email         = ["barelyknown@icloud.com"]
  spec.summary       = %q{Calculate the precision of a anything that can be converted into a decimal.}
  spec.homepage      = "https://github.com/barelyknown/precision"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0"
end
