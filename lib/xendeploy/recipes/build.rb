Capistrano::Configuration.instance(:must_exist).load do

  namespace :xen do
    namespace :build do

      "Default Build"
      task :default do
        puts "default build"
      end

      desc "Add a new job to the build server"
      task :add do
        puts "adding builder..."
      end
      
      desc "Run build script"
      task :run do
        puts "running build script..."
      end

    end
  end

end