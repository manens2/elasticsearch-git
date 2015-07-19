# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elasticsearch/git/version'

Gem::Specification.new do |spec|
  spec.name          = "elasticsearch-git"
  spec.version       = Elasticsearch::Git::VERSION
  spec.authors       = ["Andrey Kumanyaev", "Evgeniy Sokovikov"]
  spec.email         = ["me@zzet.org", "skv-headless@yandex.ru"]
  spec.summary       = %q{Elasticsearch integrations for git repositories.}
  spec.description   = %q{Elasticsearch integrations for indexing git repositories.}
  spec.homepage      = "https://github.com/zzet/elasticsearch-git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'elasticsearch-model'
  spec.add_runtime_dependency 'elasticsearch-api', '> 0.4.0'
  spec.add_runtime_dependency 'rugged', '~> 0.22.2'
  spec.add_runtime_dependency 'charlock_holmes', '~> 0.6.9'
  spec.add_runtime_dependency 'gitlab-linguist', '> 2.9.0'
  spec.add_runtime_dependency 'activemodel', '~> 4.1.0'
  spec.add_runtime_dependency 'activesupport', '~> 4.1.0'
end
