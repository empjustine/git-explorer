# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "weatherlight/version"

Gem::Specification.new do |gem|
  gem.name        = "weatherlight"
  gem.version     = Weatherlight::VERSION
  gem.date        = Date.today.to_s

  gem.authors     = ["emp.justine"]
  gem.email       = ["emp.justine@gmail.com"]
  gem.homepage    = "http://github.com/empjustine/git-explorer"

  gem.summary     = %q{Gtk 2 GUI for Git.}
  gem.description = %q{A Gtk2 GUI for Git version control system. Because gitting
  should be fun}

  gem.rubyforge_project = "weatherlight"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

# gem.add_development_dependency "rspec"
  gem.add_runtime_dependency "gtk2"
  gem.add_runtime_dependency "grit"
  gem.add_runtime_dependency "amatch"
end
