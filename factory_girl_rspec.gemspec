# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "factory_girl/rspec/version"

Gem::Specification.new do |s|
  s.name        = "factory_girl_rspec"
  s.version     = FactoryGirl::Rspec::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ryan Sonnek"]
  s.email       = ["ryan@codecrate.com"]
  s.homepage    = ""
  s.summary     = %q{integrate factory_girl directly into the RSpec DSL}
  s.description = %q{add helper methods to quickly instantiate and assign factory girl fixtures to your test context}

  s.rubyforge_project = "factory_girl_rspec"

  s.add_runtime_dependency 'rspec', '>= 2.0'
  s.add_runtime_dependency 'factory_girl', '>= 2.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
