# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sloe/version'

Gem::Specification.new do |gem|
  gem.name          = "sloe"
  gem.version       = Sloe::VERSION
  gem.authors       = ["David Gethings"]
  gem.email         = ["dgjnpr@gmail.com"]
  gem.description   = %q{Sloe uses NETCONF and/or SNMP to gather data regarding a network device. Designed to help with automated testing this gem can also be used with things like Ruby on Rails}
  gem.summary       = %q{A one stop shop for collecting data from a network device using NETCONF or SNMP}
  gem.homepage      = "https://github.com/dgjnpr/Sloe"

  gem.add_dependency('snmp', '>= 1.1.0')
  gem.add_dependency('netconf', '>= 0.2.5')
  gem.add_dependency('net-scp', '>= 1.0.4')
  gem.add_development_dependency('rspec', '>= 2.12.0')
  gem.add_development_dependency('yard')
  gem.add_development_dependency('debugger', '>= 1.6.0')
  gem.add_development_dependency('simplecov')

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
