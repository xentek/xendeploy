unless Capistrano::Configuration.respond_to?(:instance)
  abort "xendeploy requires Capistrano 2"
end