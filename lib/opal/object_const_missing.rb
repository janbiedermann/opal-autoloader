class Object
  class << self
    alias _autoloader_original_const_missing const_missing

    def const_missing(const_name)
      # need to call original code because some things are set up there
      # original code may also be overloaded by reactrb, for example
      _autoloader_original_const_missing(const_name)
    rescue StandardError => e
      Opal::Autoloader.const_missing(const_name, self) || raise(e)
    end
  end
end