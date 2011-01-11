module BigCms
  class ContentManager < ActiveRecord::Base
    unloadable
    has_many :pages
    has_many :components
    has_many :navigations, :as => :navigationable
    has_many :files, :class_name => "CmsFile"
    has_many :layouts

    def all_navigations
      BigCms::Navigation.tree_to_a(self).reject{|a| a == self}
    end
  end
end
