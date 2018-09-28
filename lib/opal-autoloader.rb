if RUBY_ENGINE == 'opal'
  require 'active_support/core_ext/module'
  require 'opal/autoloader'
  require 'opal/autoloader_starter'
  require 'opal/autoloader/version'

  Opal::Autoloader.load_paths = %w[components models operations stores]
else
  require 'opal'
  require 'opal-activesupport'
  require 'opal/autoloader/version'

  Opal.append_path File.dirname(__FILE__).untaint
end

