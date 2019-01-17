source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# gem 'rails', '~> 5.2' # adminos conflict
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# gem 'pg' # adminos conflict
# Use Puma as the app server
gem 'puma', '~> 3.11'
# gem 'puma', '~> 3.7' # adminos conflict
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'ffaker'
gem 'factory_bot_rails'
gem 'database_cleaner'
gem 'sidekiq'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry' # from adminos
  gem 'shoulda-matchers' # from adminos
#   gem 'shoulda-matchers' # adminos conflict
  gem 'bundler-audit' # from adminos
  gem 'minitest' # from adminos
  gem 'rspec-rails' # from adminos
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
#   gem 'listen', '~> 3.0.5' # adminos conflict
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', require: false # from adminos
  gem 'capistrano-bundler', require: false # from adminos
  gem 'capistrano-rails', require: false # from adminos
  gem 'capistrano-rvm', require: false # from adminos
  gem 'guard' # from adminos
  gem 'guard-livereload', '~> 2.5', require: false # from adminos
  gem 'capistrano3-puma'
  gem 'capistrano-sidekiq'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# gem 'adminos', path: '../../github/adminos/'
gem 'adminos'
gem 'role_model' # from adminos
gem 'webpacker', '~> 3.5' # from adminos
gem 'actiontext', github: 'rails/actiontext', require: 'action_text', ref: 'cfe4674d3637c746cdb3c2b5131e2de498775529' # from adminos
gem 'image_processing', '~> 1.2' # for Active Storage variants # from adminos
group :production, :staging do
  gem 'unicorn' # from adminos
end
gem 'whenever', require: false # from adminos
gem 'capistrano-db-tasks', require: false # from adminos
gem 'sanitize' # from adminos
gem 'mini_magick' # from adminos
gem 'paper_trail' # from adminos
gem 'postal-rails', '~> 1.0' # from adminos
gem 'scoped_search' # from adminos
gem 'omniauth' # from adminos
gem 'omniauth-facebook' # from adminos
gem 'omniauth-twitter' # from adminos
gem 'omniauth-vkontakte' # from adminos
gem 'axlsx', git: 'https://github.com/randym/axlsx.git' # from adminos
gem 'spreadsheet_architect' # from adminos
group :lint do
  gem 'rubocop' # from adminos
end
gem 'globalize' # from adminos
