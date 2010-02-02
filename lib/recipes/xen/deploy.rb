unless Capistrano::Configuration.respond_to?(:instance)
  abort "xen:deploy requires Capistrano 2"
end

namespace :xen do
  namepace :deploy do
    
  end
end