unless Capistrano::Configuration.respond_to?(:instance)
  abort "xen:deploy requires Capistrano 2"
end

require "#{File.dirname(__FILE__)}/xen/deploy"
require "#{File.dirname(__FILE__)}/xen/server"
require "#{File.dirname(__FILE__)}/xen/build"