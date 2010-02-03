Capistrano::Configuration.instance(:must_exist).load do

  namespace :xen do
    namespace :server do

      namespace :apache do
        desc "Restart Apache"
        task :restart, :roles => :web do
          sudo "/etc/init.d/apache restart"
        end
      end
  
      namespace :nginx do
        desc "Restart Nginx"
        task :restart, :roles => :web do
          sudo "/etc/init.d/nginx restart"
        end
      end
    
      namespace :php do
        desc "Restart PHP fcgi"
        task :restart, :roles => :cache do
          sudo "/etc/init.d/php-fcgi restart"
        end
      end
  
      namespace :cache do
        namespace :squid do
        desc "Restart Squid"
          task :restart, :roles => :cache do
            sudo "/etc/init.d/squid restart"
          end
        end
  
        namespace :memcached do
        desc "Restart Memcached"
          task :restart, :roles => :cache do
            sudo "/etc/init.d/memcached restart"
          end
        end
      end
  
      namespace :mysql do
        desc "Restart MySQL"
        task :restart, :roles => :db do
          sudo "/etc/init.d/mysql restart"
        end
        
        desc "Backup DB via mysqldump"
        task :backup, :roles => :db do
          run "mysqldump --add-drop-database #{dbname} > #{shared_path}/sql/#{dbname}-#{release_name}.sql"
        end
        
        desc "Restore DB from sql dump"
        task :restore, :roles => :db do
          run "mysql -u #{dbuser} -p < #{shared_path}/sql/#{dbname}-#{release_name}.sql"
        end
      
      end
  
    end
  end

end
