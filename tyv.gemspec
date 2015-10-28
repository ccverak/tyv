# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tyv/version"

Gem::Specification.new do |s|
  s.name        = "tyv"
  s.version     = Tyv::VERSION
  s.authors     = ["Carlos Castellanos Vera"]
  s.email       = ["ccverak@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Cuban version of Toros y Vacas, LoL}
  s.description = %q{One of my very first ruby programs, just having some fun}

  s.rubyforge_project = "tyv"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
end
