Capistrano::Configuration.instance(:must_exist).load do

  # namespace :xen do
    namepace :deploy do

      task :default do
        update
        update_code
        strategy.deploy!
        finalize_update
        symlink
        restart
      end

      desc "Symlinks the current release to the public directory"
      task :makepublic, :roles => :app do
        run "rm -f #{location}/public && ln -nfs #{deploy_to}/current #{location}/public"
      end

      namespace :wordpress do
        desc "Symlink the uploads folder"
        task :uploads, :roles => :app do
          run "ln -nfs #{deploy_to}/#{shared_dir}/uploads #{deploy_to}/current/wp-content/uploads"
        end
      end

    end
  # end
end