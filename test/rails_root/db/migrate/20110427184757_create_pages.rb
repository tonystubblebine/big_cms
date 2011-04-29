class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer :content_manager_id
      t.integer :navigation_id
      t.string :title
      t.text :content
      t.string :content_type
      t.string :render_type
      t.string :status
      t.integer :version
      t.text :new_content
      t.string :new_title

      t.timestamps
    end
    add_index :pages, :content_manager_id
    add_index :pages, :navigation_id
  end

  def self.down
    drop_table :pages
  end
end
