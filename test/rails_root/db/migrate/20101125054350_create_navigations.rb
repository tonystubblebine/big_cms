class CreateNavigations < ActiveRecord::Migration
  def self.up
    create_table :navigations do |t|
      t.integer :navigationable_id
      t.string :navigationable_type
      t.string :title
      t.string :url
      t.integer :position

      t.timestamps
    end
    add_index :navigations, :navigationable_id
    add_index :navigations, :navigationable_type
  end

  def self.down
    drop_table :navigations
  end
end
