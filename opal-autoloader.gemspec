require './lib/opal/autoloader/version'

Gem::Specification.new do |s|
  s.name        = 'opal-autoloader'
  s.version     = Opal::Autoloader::VERSION
  s.summary     = 'A autoloader for opal'
  s.description = 'Autoload modules so its not necessary to "require" everything'
  s.authors     = ['Jan Biedermann']
  s.email       = 'jan@kursator.de'
  s.files       = %w[lib/opal/autoloader/version.rb lib/opal/autoloader.rb lib/opal/autoloader_starter.rb lib/opal-autoloader.rb]
  s.homepage    = 'https://github.com/janbiedermann/opal-autoloader'
  s.license     = 'MIT'

  s.add_dependency 'opal', '>= 0.11.0'
end