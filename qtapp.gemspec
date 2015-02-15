# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "qtapp/version"

Gem::Specification.new do |s|
  s.name        = "qtapp"
  s.version     = QTapp::VERSION
  s.authors     = ["Keita Urashima", "Hirofumi Wakasugi"]
  s.email       = ["ursm@ursm.jp"]
  s.homepage    = "http://github.com/5t111111/qtapp"
  s.summary     = %q{tap { pp self }}
  s.description = %q{tap { pp self }}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'thor'
  s.add_runtime_dependency 'highline'

  s.add_development_dependency 'turnip'
  s.add_development_dependency 'awesome_print'
end
