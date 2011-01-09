class CreateLayouts < ActiveRecord::Migration
  def self.up
    create_table :layouts do |t|
      t.integer :content_manager_id
      t.string :name
      t.text :head
      t.text :pre_content
      t.text :post_content
      t.string :format

      t.timestamps
    end
  end

  def self.down
    drop_table :big_cms_layouts
  end
end
