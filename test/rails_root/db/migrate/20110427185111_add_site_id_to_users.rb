class AddSiteIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :site_id, :integer if defined?(User.class)
  end

  def self.down
    remove_column :users, :site_id if defined?(User.class)
  end
end
