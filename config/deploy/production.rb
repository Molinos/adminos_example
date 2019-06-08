server "demo.adminos.app", user: 'app', port: 22298, roles: %w(web app db), primary: true

set :domain, "demo.adminos.app"
set :keep_releases, 5
set :rails_env, :production
set :branch, :master
set :user, 'app'
set :deploy_to, "/home/#{fetch(:user)}/#{fetch(:application)}"
set :nginx_ssl_certificate, "/ssl/adminos.app-0001/fullchain.pem"
set :nginx_ssl_certificate_key, "/ssl/adminos.app-0001/privkey.pem"
set :nginx_ssl_dhparam, "/ssl/config/ssl-dhparams.pem"

# CentOS
set :nginx_sites_available_path, "#{fetch(:deploy_to)}/shared"
set :nginx_sites_enabled_path, '/etc/nginx/conf.d'

# Ubuntu
# set :nginx_sites_available_path, "/etc/nginx/sites-available"
# set :nginx_sites_enabled_path, "/etc/nginx/sites-enabled"
