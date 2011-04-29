class CreateComponents < ActiveRecord::Migration
  def self.up
    create_table :components do |t|
      t.integer :content_manager_id
      t.string :name
      t.text :content
      t.string :content_type
      t.string :render_type
      t.string :status
      t.integer :version
      t.text :new_content

      t.timestamps
    end
    add_index :components, :content_manager_id
  end

  def self.down
    drop_table :components
  end
end
