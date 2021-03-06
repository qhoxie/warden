$TESTING=true
require 'rubygems'
require 'rack'
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require 'warden'

Dir[File.join(File.dirname(__FILE__), "warden", "strategies", "**/*.rb")].each do |f|
  require f
end
Dir[File.join(File.dirname(__FILE__), "helpers", "**/*.rb")].each do |f|
  require f
end

Spec::Runner.configure do |config|
  config.include(Warden::Spec::Helpers)
end
