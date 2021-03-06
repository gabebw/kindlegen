# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kindlegen/version"

Gem::Specification.new do |s|
  s.name        = "kindlegen"
  s.version     = Kindlegen::VERSION
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.0.0'

  s.authors     = ["TADA Tadashi"]
  s.email       = ["t@tdtds.jp"]
  s.homepage    = ""
  s.summary     = %q{Installing kindlegen command.}
  s.description = %q{Installing kindlegen command, downloading tar.gz file from amazon.com, and extracting it and copy kindlegen command to bin.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extensions << 'ext/kindlegen/extconf.rb'

  # specify any dependencies here; for example:
  s.add_development_dependency "pry"
end
