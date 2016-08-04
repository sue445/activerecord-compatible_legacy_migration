ActiveRecord::Base.configurations["test"] = {
  adapter:  "sqlite3",
  database: File.join(__dir__, "test.sqlite3"),
  timeout:  500
}.with_indifferent_access

ActiveRecord::Base.establish_connection(:test)
ActiveRecord::Schema.verbose = false
ActiveRecord::Tasks::DatabaseTasks.root = Pathname.new(Dir.pwd)

require "active_record/railtie"

def migrate_dir
  spec_dir.join("db", "migrate")
end

def test_configuration
  ActiveRecord::Base.configurations["test"]
end

def create_db
  # db:create
  ActiveRecord::Tasks::DatabaseTasks.create(test_configuration)
end

def drop_db
  # db:drop
  ActiveRecord::Tasks::DatabaseTasks.drop(test_configuration)
end

def up_migrate
  # db:migrate
  ActiveRecord::Migrator.up(migrate_dir)
end
