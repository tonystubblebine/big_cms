class CreateBigAuthTables < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :account_id
      t.integer :site_id # optional if you're using something like big_site
      # Any additional fields here
      
      t.timestamps
    end

    create_table :accounts do |t|
      t.string :remember_token

      t.timestamps
    end
    
    create_table :login_accounts do |t|
      t.string :type
      t.integer :account_id
      t.string :remote_account_id
      t.string :name
      t.string :login
      t.string :picture_url
      # Any additional fields here 
      
      t.timestamps
    end
    
    add_index :users, :account_id
    add_index :login_accounts, :account_id
    add_index :login_accounts, :type
  end

  def self.down
    remove_index :users, :account_id
    remove_index :login_accounts, :account_id
    remove_index :login_accounts, :type
    drop_table :login_accounts
    drop_table :users
  end
end
