class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.integer :user_id
      t.integer :content_manager_id
      t.string :name
      t.string :sub_domain
      t.string :domain
      t.boolean :deleted

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
