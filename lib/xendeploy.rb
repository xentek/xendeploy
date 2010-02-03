unless Capistrano::Configuration.respond_to?(:instance)
  abort "xendeploy requires Capistrano 2"
end

require "#{File.dirname(__FILE__)}/recipes/xen"