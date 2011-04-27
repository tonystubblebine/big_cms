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
  
  def create_migration_files
    %w{create_content_managers create_pages create_navigations create_components create_cms_files add_versioning_to_pages add_versioning_to_components create_layouts condense_to_single_content_field}.each do |migration|
      create_migration_file(migration)
    end
  end

  def copy_assets
    copy_javascript

    # ACE files
    %w{ ace.js cockpit-uncompressed.js mode-css.js mode-javascript.js mode-ruby.js theme-clouds_midnight.js theme-eclipse.js theme-mono_industrial.js theme-twilight.js ace-uncompressed.js keybinding-emacs.js mode-c_cpp.js mode-html.js mode-php.js mode-xml.js theme-cobalt.js theme-idle_fingers.js theme-monokai.js worker-javascript.js cockpit.js keybinding-vim.js mode-coffee.js mode-java.js mode-python.js theme-clouds.js  theme-dawn.js theme-kr_theme.js theme-pastel_on_dark.js }.each do |js|
      copy_file "assets/javascripts/ace/#{js}", "public/javascripts/ace/#{js}"
    end
  
    # plupload files
    %w{ gears_init.js jquery.ui.plupload.min.js plupload.flash.min.js plupload.full.min.js plupload.html4.min.js plupload.min.js plupload.silverlight.xap jquery.plupload.queue.min.js plupload.browserplus.min.js plupload.flash.swf plupload.gears.min.js plupload.html5.min.js plupload.silverlight.min.js }.each do |js|
      copy_file "assets/javascripts/plupload/#{js}", "public/javascripts/plupload/#{js}"
    end
    copy_file 'assets/stylesheets/jquery.ui.plupload.css',  'public/stylesheets/jquery.ui.plupload.css'
    copy_file 'assets/javascripts/jquery.wysiwyg.js',  'public/javascripts/jquery.wysiwyg.js'
    copy_file 'assets/stylesheets/jquery.wysiwyg.css',  'public/stylesheets/jquery.wysiwyg.css'
    copy_file 'assets/jquery.wysiwyg.bg.png',  'public/images/jquery.wysiwyg.bg.png'
    copy_file 'assets/jquery.wysiwyg.gif',  'public/images/jquery.wysiwyg.gif'
  
    copy_file 'assets/stylesheets/big_cms_admin.css',  'public/stylesheets/big_cms_admin.css'
  end

  def copy_config_files
    copy_file 'big_cms_initializer.rb',  'config/initializers/big_cms.rb'
    copy_file 's3.yml',  'config/s3.yml'
  end
end
