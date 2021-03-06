require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bodymate
  class Application < Rails::Application
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'

    # rails g controllerで不要なファイルを作らない
    config.generators do |g|
      g.javascripts false
      g.helper false
      g.test_framework false
    end
  end
end
