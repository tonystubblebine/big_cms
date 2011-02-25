require 'rails/generators'
require 'rails/generators/migration'
require 'big_library/generators'
class BigCMSGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  include BigLibrary::Generators

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

  # Implement the required interface for Rails::Generators::Migration.
  # taken from http://github.com/rails/rails/blob/master/activerecord/lib/generators/active_record.rb
  def self.next_migration_number(dirname) #:nodoc:
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end
  
  def create_migration_file
    %w{create_content_managers create_pages create_navigations create_components create_cms_files add_versioning_to_pages add_versioning_to_components create_layouts condense_to_single_content_field}.each do |migration|
      begin
        migration_template "#{migration}_migration.rb", "db/migrate/#{migration}.rb"
        sleep(2) # cheap hack to make sure migration numbers end up being different
      rescue
        puts $!
      end
    end
  end

  def copy_assets
    copy_javascript
    copy_file 'assets/stylesheets/big_cms_admin.css',  'public/stylesheets/big_cms_admin.css'
  end

  def copy_config_files
    copy_file 'big_cms_initializer.rb',  'config/initializers/big_cms.rb'
    copy_file 's3.yml',  'config/s3.yml'
  end
end
