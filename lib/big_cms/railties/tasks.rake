require 'generators/big_cms/big_cms_generator'
namespace :big_cms do 
  namespace :generate do
    desc "generate database migration"
    task :migration do
      BigCMSGenerator.new.create_migration_file
    end

    desc "copy assets"
    task :copy_assets do
      BigCMSGenerator.new.copy_assets
    end

    desc "copy config files"
    task :copy_config_files do
      BigCMSGenerator.new.copy_config_files
    end
  end
end
