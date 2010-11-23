class CreateNavigations < ActiveRecord::Migration
  def self.up
    create_table :navigations do |t|
      t.string :navigationable_type
      t.integer :navigationable_id
      t.integer :position
      t.string :title
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :navigations
  end
end
