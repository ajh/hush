# -*- encoding: utf-8 -*-
require File.expand_path('../lib/secret/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andy Hartford"]
  gem.email         = ["hartforda@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "secret"
  gem.require_paths = ["lib"]
  gem.version       = Secret::VERSION

  gem.add_runtime_dependency 'thor'
  gem.post_install_message = "Shush - you've installed secret. See 'secret -h' for more info."

  gem.add_development_dependency 'rspec', '~> 2'
end
