describe ActiveRecord::CompatibleLegacyMigration do
  describe "#migration_class" do
    before do
      create_db
    end

    after do
      drop_db
    end

    it { expect { up_migrate }.not_to output(/DEPRECATION WARNING: Directly inheriting from ActiveRecord::Migration is deprecated/).to_stderr }
  end
end
