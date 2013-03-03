# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundler_signature_check/version'

Gem::Specification.new do |spec|
  spec.name          = "bundler_signature_check"
  spec.version       = BundlerSignatureCheck::VERSION
  spec.authors       = ["Bradley Buda"]
  spec.email         = ["brad@meldium.com"]
  spec.description   = %q{Figure out which gems are signed given a Gemfile.lock}
  spec.summary       = %q{Helps you determine which --trust-policy is safe to use with bundler}
  spec.homepage      = "https://github.com/meldium/bundler_signature_check"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
