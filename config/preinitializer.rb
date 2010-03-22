begin
  # Require the preresolved set of locked gems
  require File.expand_path(File.join(File.dirname(__FILE__), '..', '.bundle', 'environment'))
rescue LoadError
  require "rubygems"
  require "bundler"
  Bundler.setup
end
