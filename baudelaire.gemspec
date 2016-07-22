# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "baudelaire/version"

Gem::Specification.new do |s|
  s.name        = "baudelaire"
  s.version     = Baudelaire::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Albert Bellonch"]
  s.email       = ["albert@itnig.net"]
  s.homepage    = "http://itnig.net"
  s.summary     = %q{A string symbolizer}
  s.description = %q{-}
  s.license     = 'MIT'

  s.rubyforge_project = "baudelaire"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "activerecord", '~>3'

  s.add_development_dependency "rspec"
  s.add_development_dependency "i18n", '0.6.11'
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rake"
end
