class CreateContentManagers < ActiveRecord::Migration
  def self.up
    create_table :content_managers do |t|
      t.boolean :private_pages, :default => false
      t.boolean :user_editable, :default => false

      t.timestamps
    end
    ContentManager.create()
  end

  def self.down
    drop_table :content_managers
  end
end
