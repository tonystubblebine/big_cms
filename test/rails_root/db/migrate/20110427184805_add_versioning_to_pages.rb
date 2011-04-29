class AddVersioningToPages < ActiveRecord::Migration
  def self.up
    BigCms::Page.create_versioned_table
    add_column :page_versions, :user_id, :integer
    add_column :page_versions, :clone_of, :integer
  end

  def self.down
    BigCms::Page.drop_versioned_table
    remove_column :page_versions, :user_id
    remove_column :page_versions, :clone_of
  end
end
