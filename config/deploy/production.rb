server "app@demo.molinos.ru", user: 'app', port: 22298, roles: %w(web app db), primary: true
set :keep_releases, 5
set :rails_env, 'production'
set :branch, :master
set :deploy_to, '/home/app/demo_adminos'