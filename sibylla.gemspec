Gem::Specification.new do |gem|
  gem.name = 'sibylla'
  gem.version = '0.0.1'
  gem.authors = 'Alexsey Ermolaev'
  gem.email = 'afay.zangetsu@gmail.com'
  gem.homepage = 'https://github.com/AfsmNGhr/sibylla'
  gem.description = 'Ruby voice assistant'
  gem.summary = 'Ruby voice assistant'
  gem.license = 'MIT'

  gem.add_development_dependency 'rake', '~> 10.4'
  gem.add_development_dependency 'rspec', '~> 3.3'

  gem.files = `git ls-files`.split("\n")
  gem.require_paths = ['lib', 'config']
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})

  gem.extra_rdoc_files = ['License.org', 'README.md']
  gem.requirements = ['*nix* or OS X (pgrep, amixer)',
                      'Sphinxbase', 'Pocketsphinx',
                      'Pulseaudio sound server',
                      'Festival speech engine']
end
