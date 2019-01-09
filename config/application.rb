require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DemoAdminos
  class Application < Rails::Application
    config.i18n.default_locale = :ru
    config.time_zone = 'Moscow'
    config.i18n.available_locales = [:ru]
    config.generators { |g| g.test_framework :rspec }
    config.action_mailer.default_url_options = { host: 'molinos.ru' }
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.to_prepare do
      Devise::SessionsController.layout 'admin'
      Devise::RegistrationsController.layout proc { |controller| user_signed_in? ? 'application' : 'admin' }
      Devise::ConfirmationsController.layout 'admin'
      Devise::UnlocksController.layout 'admin'
      Devise::PasswordsController.layout 'admin'
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end
