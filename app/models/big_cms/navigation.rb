module BigCms
  class Navigation < ActiveRecord::Base
    unloadable
    has_many :sub_navigation, :class_name => "Navigation", :as => :navigationable

    validates_presence_of :title, :url, :navigationable_id, :navigationable_type
  end
end