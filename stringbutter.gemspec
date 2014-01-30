# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stringbutter/version'

Gem::Specification.new do |spec|
  spec.name          = "stringbutter"
  spec.version       = Stringbutter::VERSION
  spec.authors       = ["pferdwurst"]
  spec.email         = ["mamedalin@gmail.com"]
  spec.description   = %q{StringBuilder for Ruby with formatting options}
  spec.summary       = %q{Generate strings for terminal outputs with pretty formatting.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
