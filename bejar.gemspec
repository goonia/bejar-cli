# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bejar/version'

Gem::Specification.new do |s|
  s.name        = 'bejar'
  s.version     = Bejar::VERSION
  s.date        = '2016-06-11'
  s.summary     = "Bejar cli tools"
  s.description = "Bejar cli tools"
  s.authors     = ["Dariush Abbasi"]
  s.email       = 'poshtehani@gmail.com'
  s.files       = ['bin/bejar', "lib/bejar.rb", "lib/bejar/version.rb"]
  s.require_paths = ["lib"]
  s.homepage    = 'http://github.com/goonia/bejar-cli'
  s.executables = ['bejar']
  s.license       = 'MIT'

  s.add_development_dependency "rspec", "~> 3.4.0"
end
