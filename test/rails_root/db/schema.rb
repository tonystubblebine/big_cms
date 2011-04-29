# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110427185111) do

  create_table "accounts", :force => true do |t|
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_files", :force => true do |t|
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "content_manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "component_versions", :force => true do |t|
    t.integer  "component_id"
    t.integer  "version"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "clone_of"
  end

  add_index "component_versions", ["component_id"], :name => "index_component_versions_on_component_id"

  create_table "components", :force => true do |t|
    t.integer  "content_manager_id"
    t.string   "name"
    t.text     "content"
    t.string   "content_type"
    t.string   "render_type"
    t.string   "status"
    t.integer  "version"
    t.text     "new_content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "components", ["content_manager_id"], :name => "index_components_on_content_manager_id"

  create_table "content_managers", :force => true do |t|
    t.boolean  "private_pages", :default => false
    t.boolean  "user_editable", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "layouts", :force => true do |t|
    t.integer  "content_manager_id"
    t.string   "name"
    t.text     "head"
    t.text     "pre_content"
    t.text     "post_content"
    t.string   "format"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
  end

  create_table "login_accounts", :force => true do |t|
    t.string   "type"
    t.integer  "account_id"
    t.string   "remote_account_id"
    t.string   "name"
    t.string   "login"
    t.string   "picture_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "login_accounts", ["account_id"], :name => "index_login_accounts_on_account_id"
  add_index "login_accounts", ["type"], :name => "index_login_accounts_on_type"

  create_table "navigations", :force => true do |t|
    t.integer  "navigationable_id"
    t.string   "navigationable_type"
    t.string   "title"
    t.string   "url"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "navigations", ["navigationable_id"], :name => "index_navigations_on_navigationable_id"
  add_index "navigations", ["navigationable_type"], :name => "index_navigations_on_navigationable_type"

  create_table "page_versions", :force => true do |t|
    t.integer  "page_id"
    t.integer  "version"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "clone_of"
  end

  add_index "page_versions", ["page_id"], :name => "index_page_versions_on_page_id"

  create_table "pages", :force => true do |t|
    t.integer  "content_manager_id"
    t.integer  "navigation_id"
    t.string   "title"
    t.text     "content"
    t.string   "content_type"
    t.string   "render_type"
    t.string   "status"
    t.integer  "version"
    t.text     "new_content"
    t.string   "new_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["content_manager_id"], :name => "index_pages_on_content_manager_id"
  add_index "pages", ["navigation_id"], :name => "index_pages_on_navigation_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "roles_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "sites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "content_manager_id"
    t.string   "name"
    t.string   "sub_domain"
    t.string   "domain"
    t.boolean  "deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  add_index "users", ["account_id"], :name => "index_users_on_account_id"

end
