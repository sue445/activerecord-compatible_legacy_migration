# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record/compatible_legacy_migration/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-compatible_legacy_migration"
  spec.version       = ActiveRecord::CompatibleLegacyMigration::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]

  spec.summary       = %q{Compatible migration file between Rails 4.2 and 5+}
  spec.description   = %q{Compatible migration file between Rails 4.2 and 5+}
  spec.homepage      = "https://github.com/sue445/activerecord-compatible_legacy_migration"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 4.0.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 1.0.0"
  spec.add_development_dependency "rails"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "sqlite3"
end
