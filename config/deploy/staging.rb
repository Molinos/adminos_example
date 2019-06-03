server "#{fetch(:application)}.staging.molinos.ru", user: 'app', roles: %w(web app db), primary: true

set :domain, "#{fetch(:application)}.staging.molinos.ru"
set :keep_releases, 5
set :rails_env, 'staging'
set :branch, :develop

set :user, :app
set :deploy_to, "/home/#{fetch(:user)}/#{fetch(:application)}"

# ssl settings.
# if not set and and set :nginx_use_ssl to true at deploy.rb we will try use lets encrypt certificate solution
#set :nginx_ssl_certificate, "path to ssl certificate file"
#set :nginx_ssl_certificate_key, "path to ssl certificate key file"
#set :nginx_ssl_dhparam, "path to generated dhparam"

# CentOS
set :nginx_sites_available_path, "#{fetch(:deploy_to)}/shared"
set :nginx_sites_enabled_path, '/etc/nginx/conf.d'

# Ubuntu
# set :nginx_sites_available_path, "/etc/nginx/sites-available"
# set :nginx_sites_enabled_path, "/etc/nginx/sites-enabled"
