# -*- encoding: utf-8 -*-
require File.expand_path('../lib/colourlovers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Masters"]
  gem.email         = ["chrismasters@gmail.com"]
  gem.description   = %q{An easy way to access the COLOURlovers API using httparty.}
  gem.summary       = %q{A ruby wrapper for the COLOURlovers API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "colourlovers"
  gem.require_paths = ["lib"]
  gem.version       = Colourlovers::VERSION
  
  gem.add_dependency('httparty')
end
