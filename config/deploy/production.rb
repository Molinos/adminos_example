server "app@demo.molinos.ru", user: 'app', port: 22298, roles: %w(web app db), primary: true
set :keep_releases, 5
set :rails_env, 'production'
set :branch, :master
set :deploy_to, '/home/app/demo_adminos'
set :whenever_path, ->{ release_path }

set :nginx_sites_available_path, "#{fetch(:deploy_to)}/shared"
set :nginx_sites_enabled_path, '/etc/nginx/conf.d'
