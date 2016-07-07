# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dynamo/model/version'

Gem::Specification.new do |spec|
  spec.name          = "dynamo-model"
  spec.version       = Dynamo::Model::VERSION
  spec.authors       = ["Douglas Rossignolli"]
  spec.email         = ["douglas.rossignolli@gmail.com"]

  spec.summary       = %q{A small libraty to create models to create, update, list, search in the DynamoDB from AWS.}
  spec.description   = %q{Ccom objetivo de agilizar e simplicar o trabalho com o dynamoDB, essa biblioteca vai ajudar a abstrair as funcões do dynamoDB}
  spec.homepage      = "http://github.com/xdougx/dynamo-model"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"


end
