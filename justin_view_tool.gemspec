# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "justin_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "justin_view_tool"
  spec.version       = JustinViewTool::VERSION
  spec.authors       = ["Justin Kwong"]
  spec.email         = ["justin.kwong@osi.ca.gov"]

  spec.summary       = %q{Various view specific methods for applications I use}
  spec.description   = %q{Provides generated HTML data for Rails applications}
  spec.homepage      = "http://dissect-ruby-jkwong.c9users.io:8080/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
