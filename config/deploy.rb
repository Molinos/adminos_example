set :application, 'adminos_example'
set :repo_url, "git@github.com:Molinos/adminos_example.git"

set :config_files, %w[config/database.yml .env]
append :linked_files, 'config/database.yml', '.env', 'config/master.key'
append :linked_dirs,  'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets',
       'vendor/bundle', 'public/system', 'public/uploads'

set :rvm_ruby_version, Pathname(__dir__).join('../.ruby-version').read.chomp
append :rvm_map_bins, 'puma', 'pumactl', 'sidekiq', 'sidekiqctl'

set :db_local_clean, true
set :assets_dir, %w[public/system]

set :nginx_server_name, -> { "#{fetch(:domain)} localhost #{fetch(:application)}.local" }
set :nginx_upstream_name, -> { "#{fetch(:application)}_#{fetch(:stage)}" }
set :nginx_config_name, -> { "#{fetch(:domain)}.conf" }
set :nginx_use_ssl, true

namespace :deploy do
  # after :restart, 'systemd:sidekiq:reload-or-restart'
  after :publishing, :restart
end
