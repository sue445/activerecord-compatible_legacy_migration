require "active_record/compatible_legacy_migration/version"
require "active_record"

module ActiveRecord
  module CompatibleLegacyMigration
    def self.migration_class
      if ActiveRecord::VERSION::MAJOR >= 5
        ActiveRecord::Migration[4.2]
      else
        ActiveRecord::Migration
      end
    end
  end
end
