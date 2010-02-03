require 'capistrano'
#require 'deprec'

unless Capistrano::Configuration.respond_to?(:instance)
  abort "xendeploy requires Capistrano 2"
end

require "#{File.dirname(__FILE__)}/xendeploy/deprec_extensions"
load File.dirname(__FILE__) + "/xendeploy/recipes/deploy.rb"
load File.dirname(__FILE__) + "/xendeploy/recipes/build.rb"
load File.dirname(__FILE__) + "/xendeploy/recipes/server.rb"
