require 'rails/generators'
require 'rails/generators/migration'

class BigCMSGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

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
    migration_template 'create_content_managers_migration.rb', 'db/migrate/create_content_managers.rb'
    sleep(2) # cheap hack to make sure migration numbers end up being different
    migration_template 'create_pages_migration.rb', 'db/migrate/create_pages.rb'
    sleep(2)
    migration_template 'create_navigations_migration.rb', 'db/migrate/create_navigations.rb'
    sleep(2)
    migration_template 'create_components_migration.rb', 'db/migrate/create_components.rb'
    sleep(2)
    migration_template 'create_cms_files_migration.rb', 'db/migrate/create_cms_files.rb'
  end

  def copy_assets
    copy_file 'assets/stylesheets/big_cms_admin.css',  'public/stylesheets/big_cms_admin.css'
  end
end
