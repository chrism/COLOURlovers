# -*- encoding: utf-8 -*-
require File.expand_path('../lib/colourlovers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Masters"]
  gem.email         = ["chrismasters@gmail.com"]
  gem.description   = %q{A simple gem to use to make it easy to use the COLOURlovers API http://www.colourlovers.com/api. This is my first gem and there are currently no tests, bt I am working on it.}
  gem.summary       = %q{A ruby wrapper for the COLOURlovers API}
  gem.homepage      = "https://github.com/chrism/COLOURlovers"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "colourlovers"
  gem.require_paths = ["lib"]
  gem.version       = Colourlovers::VERSION
  
  gem.add_dependency "httparty"
  gem.add_development_dependency "rake"
end
