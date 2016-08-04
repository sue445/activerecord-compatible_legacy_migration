# ActiveRecord::CompatibleLegacyMigration

Compatible migration file between Rails 4.2 and 5+

[![Gem Version](https://badge.fury.io/rb/activerecord-compatible_legacy_migration.svg)](https://badge.fury.io/rb/activerecord-compatible_legacy_migration)
[![Build Status](https://travis-ci.org/sue445/activerecord-compatible_legacy_migration.svg?branch=master)](https://travis-ci.org/sue445/activerecord-compatible_legacy_migration)
[![Code Climate](https://codeclimate.com/github/sue445/activerecord-compatible_legacy_migration/badges/gpa.svg)](https://codeclimate.com/github/sue445/activerecord-compatible_legacy_migration)
[![Coverage Status](https://coveralls.io/repos/github/sue445/activerecord-compatible_legacy_migration/badge.svg?branch=master)](https://coveralls.io/github/sue445/activerecord-compatible_legacy_migration?branch=master)
[![Dependency Status](https://gemnasium.com/badges/github.com/sue445/activerecord-compatible_legacy_migration.svg)](https://gemnasium.com/github.com/sue445/activerecord-compatible_legacy_migration)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-compatible_legacy_migration'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-compatible_legacy_migration

## Usecase
* gem including migration file (e.g. mountable engine)

## Usage
Use `ActiveRecord::CompatibleLegacyMigration.migration_class` instead of `ActiveRecord::Migration`

### Example

```ruby
class CreateUsers < ActiveRecord::CompatibleLegacyMigration.migration_class
  def change
    create_table :users do |t|
      t.timestamps null: false
    end
  end
end
```

see [ActiveRecord::CompatibleLegacyMigration](lib/active_record/compatible_legacy_migration.rb)

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sue445/activerecord-compatible_legacy_migration.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

