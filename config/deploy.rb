set :application, 'demo_adminos'
set :repo_url, "git@gitlab.molinos.ru:abuhtoyarov/demo-adminos.git"

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', '.env', 'config/master.key')
# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push(
  'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'storage'
)

set :rvm_ruby_version, Pathname(__dir__).join('../.ruby-version').read.chomp
append :rvm_map_bins, 'puma', 'pumactl', 'sidekiq', 'sidekiqctl'

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
