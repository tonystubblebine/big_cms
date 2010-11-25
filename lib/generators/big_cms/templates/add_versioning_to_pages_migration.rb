class AddVersioningToPages < ActiveRecord::Migration
  def self.up
    BigCms::Page.create_versioned_table
    add_column :page_versions, :user_id, :integer
    add_column :page_versions, :clone_of, :integer
    add_column :page_versions, :created_at, :datetime
    add_column :page_versions, :updated_at, :datetime
  end

  def self.down
    BigCms::Page.drop_versioned_table
    remove_column :page_versions, :user_id
    remove_column :page_versions, :clone_of
    remove_column :page_versions, :created_at
    remove_column :page_versions, :updated_at
  end
end
