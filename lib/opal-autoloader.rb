if RUBY_ENGINE == 'opal'
  require 'opal/autoloader'
  require 'opal/autoloader_starter'
  require 'opal/autoloader/version'

  Opal::Autoloader.load_paths = %w[components models operations stores]
else
  require 'opal'
  require 'opal/autoloader/version'

  Opal.append_path File.expand_path('../lib', __FILE__).untaint
end

