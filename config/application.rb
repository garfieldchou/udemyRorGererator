require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.generators do |g|
      g.orm              :active_record
      g.template_engine  :erb
      g.test_framework   :test_unit, fixture: false
      g.stylesheets      false
      g.javascripts      true
    end
  end
end
