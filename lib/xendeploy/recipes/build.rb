Capistrano::Configuration.instance(:must_exist).load do

  namespace :xen do
    namespace :build do
      task :default do
        puts "default build"
      end
    end
  end

end