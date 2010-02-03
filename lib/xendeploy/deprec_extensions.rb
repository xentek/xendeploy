require 'capistrano'
# require 'deprec'

module Xendeploy
 
 XENDEPLOY_TEMPLATES_BASE = File.join(File.dirname(__FILE__), 'templates')
 
end

Capistrano.plugin :xendeploy, Xendeploy