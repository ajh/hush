# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hush/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andy Hartford"]
  gem.email         = ["hartforda@gmail.com"]
  gem.description   = <<-DESC
This gem provides a command line utility called 'hush' which can
manage secret info. This was built to solve my problem of not
wanting to store email addresses and other sensitive info in my
github managed dotfiles project.
DESC
  gem.summary       = %q{A Command line utility to manage sensitive info}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hush"
  gem.require_paths = ["lib"]
  gem.version       = Hush::VERSION

  gem.add_runtime_dependency 'thor'
  gem.post_install_message = "You've installed hush. See 'hush -h' for more info."

  gem.add_development_dependency 'rspec', '~> 2'
end
