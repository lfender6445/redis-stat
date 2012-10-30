# -*- encoding: utf-8 -*-
require File.expand_path('../lib/redis-stat/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Junegunn Choi"]
  gem.email         = ["junegunn.c@gmail.com"]
  gem.description   = %q{A real-time Redis monitoring tool written in Ruby}
  gem.summary       = %q{A real-time Redis monitoring tool written in Ruby}
  gem.homepage      = "https://github.com/junegunn/redis-stat"

  gem.platform      = 'java' if RUBY_PLATFORM == 'java'
  gem.files         = `git ls-files`.split("\n").reject { |f| f =~ /^screenshots/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "redis-stat"
  gem.require_paths = ["lib"]
  gem.version       = RedisStat::VERSION

  gem.add_runtime_dependency "ansi", '~> 1.4.3'
  gem.add_runtime_dependency "redis", '~> 3.0.1'
  gem.add_runtime_dependency "tabularize", '~> 0.2.8'
  gem.add_runtime_dependency "insensitive_hash", '~> 0.3.0'
  gem.add_runtime_dependency "parallelize", '~> 0.4.0'
  gem.add_runtime_dependency "si", '~> 0.1.3'
  unless RUBY_PLATFORM == 'java'
    gem.add_runtime_dependency "sinatra", '~> 1.3.3'
    gem.add_runtime_dependency "thin", '~> 1.5.0' 
    gem.add_runtime_dependency "json", '~> 1.7.5'
    gem.add_runtime_dependency "daemons", '~> 1.1.9'
  end

  gem.add_development_dependency 'test-unit'
end
