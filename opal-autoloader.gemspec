require './lib/opal/autoloader/version'

Gem::Specification.new do |s|
  s.name        = 'opal-autoloader'
  s.version     = Opal::Autoloader::VERSION
  s.summary     = 'A autoloader for opal'
  s.description = 'Autoload modules so its not necessary to "require" everything'
  s.authors     = ['Jan Biedermann']
  s.email       = 'jan@kursator.de'
  s.files       = %w[lib/opal/autoloader/version.rb lib/opal/autoloader.rb lib/opal/object_const_missing.rb lib/opal-autoloader.rb README.md LICENSE]
  s.homepage    = 'https://github.com/isomorfeus/opal-autoloader'
  s.license     = 'MIT'

  s.add_dependency 'opal', '>= 0.11.0'
  s.add_dependency 'opal-activesupport', '~> 0.3.1'
end