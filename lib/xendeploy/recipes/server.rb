Capistrano::Configuration.instance(:must_exist).load do
  # namespace :xen do
  #   namespace :server do
  # 
  #     namespace :apache do
  #       task :restart, :roles => :web do
  #         sudo "/etc/init.d/apache restart"
  #       end
  #     end
  # 
  #     namespace :nginx do
  #       task :restart, :roles => :web do
  #         sudo "/etc/init.d/nginx restart"
  #       end
  #     end
  #   
  #     namespace :php do
  #       task :restart, :roles => :cache do
  #         sudo "/etc/init.d/php-fcgi restart"
  #       end
  #     end
  # 
  #     namespace :cache do
  #       namespace :squid do
  #         task :restart, :roles => :cache do
  #           sudo "/etc/init.d/squid restart"
  #         end
  #       end
  # 
  #       namespace :memcached do
  #         task :restart, :roles => :cache do
  #           sudo "/etc/init.d/memcached restart"
  #         end
  #       end
  #     end
  # 
  #     namespace :mysql do
  #       task :restart, :roles => db do
  #         sudo "/etc/init.d/mysql restart"
  #       end
  # 
  #       task :backup, :roles => db do
  #         run "mysqldump --add-drop-database #{dbname} > #{shared_path}/sql/#{dbname}-#{release_name}.sql"
  #       end
  # 
  #       task :restore, :roles =>db do
  #         run "mysql -u #{dbuser} -p < #{shared_path}/sql/#{dbname}-#{release_name}.sql"
  #       end
  #     end
  # 
  #   end
  # end
end
