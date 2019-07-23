if RUBY_ENGINE == 'opal'
  require 'active_support/core_ext/module'
  require 'active_support/core_ext/string'
  require 'opal/autoloader'
  require 'opal/autoloader/version'
  require 'opal/object_const_missing'
  Opal::Autoloader.init
else
  require 'opal'
  require 'opal-activesupport'
  require 'opal/autoloader/version'

  Opal.append_path File.dirname(__FILE__).untaint
end

