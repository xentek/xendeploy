unless Capistrano::Configuration.respond_to?(:instance)
  abort "xendeploy requires Capistrano 2"
end

require "#{File.dirname(__FILE__)}/xendeploy/deprec_extensions"
require "#{File.dirname(__FILE__)}/xendeploy/build"
require "#{File.dirname(__FILE__)}/xendeploy/deploy"
require "#{File.dirname(__FILE__)}/xendeploy/server"