class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
    add_index :roles, :name

    BigAuth::Role.create(:name => "pending")
    BigAuth::Role.create(:name => "approved")
    BigAuth::Role.create(:name => "admin")
  end

  def self.down
    drop_table :roles
  end
end
