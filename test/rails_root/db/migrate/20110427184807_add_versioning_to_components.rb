class AddVersioningToComponents < ActiveRecord::Migration
  def self.up
    BigCms::Component.create_versioned_table
    add_column :component_versions, :user_id, :integer
    add_column :component_versions, :clone_of, :integer
  end

  def self.down
    BigCms::Component.drop_versioned_table
    remove_column :component_versions, :user_id
    remove_column :component_versions, :clone_of
  end
end
