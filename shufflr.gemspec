# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shufflr/version'

Gem::Specification.new do |gem|
  gem.name          = "shufflr"
  gem.version       = Shufflr::VERSION
  gem.authors       = ["David Asabina"]
  gem.email         = ["vid@bina.me"]
  gem.description   = %q{A set of helpers to shuffle/mix sets around}
  gem.summary       = %q{Shuffles and dances to randomize data}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
