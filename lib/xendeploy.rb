unless Capistrano::Configuration.respond_to?(:instance)
  abort "xendeploy requires Capistrano 2"
end

require "#{File.dirname(__FILE__)}/xendeploy/deprec_extensions"

# Load recipes.
recipes = Dir[File.dirname(__FILE__) + "/recipes/*.rb"].collect { |recipe| File.expand_path(recipe) }
recipes.each do |recipe|
  Capistrano::Configuration.instance.load recipe
end