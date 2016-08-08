require "active_record/compatible_legacy_migration/version"
require "active_record/compatible_legacy_migration/configuration"
require "active_record"

module ActiveRecord
  module CompatibleLegacyMigration
    def self.config
      @config ||= Configuration.new
    end

    def self.configure
      yield config if block_given?
    end

    def self.migration_class
      if ActiveRecord::VERSION::MAJOR >= 5
        ActiveRecord::Migration[config.default_version]
      else
        ActiveRecord::Migration
      end
    end
  end
end
