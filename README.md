# opal-autoloader
No need to write those
```ruby
require "this"
require "that"
```
in your opal code everywhere.

## install

add the following to Gemfile:
```ruby
gem 'opal-autoloader'
```
and `bundle install`

## usage

after loading opal
```ruby
require 'opal-autoloader'
```
Of course, it must be made sure, that used files are included during compilation, for example by using:
```ruby
require_tree 'components'
```

## configuration
The look up paths can be added, for example:
```ruby
Opal::Autoloader.add_load_path('components')
```
These are the module path prefixes as used in the `Opal.modules` array.
Constants will be looked up there, if they cannot be found directly.
For example a constant `My::Component` will be looked up in Opal.modules directly, in the module 'my/component',
if it cannot be found there, it will be looked up as 'components/my/component', and so on.

## info
This was originally a port of the rails autoloader.

