module ActiveRecord
  module CompatibleLegacyMigration
    require "active_support/configurable"

    class Configuration
      DEFAULT_VERSION = 4.2

      include ActiveSupport::Configurable

      config_accessor :default_version

      configure do |config|
        config.default_version = DEFAULT_VERSION
      end
    end
  end
end
