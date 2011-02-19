module BigCms
  class ContentManager < ActiveRecord::Base
    unloadable
    has_many :pages
    has_many :components
    has_many :navigations, :as => :navigationable, :order => "position ASC"
    has_many :files, :class_name => "CmsFile"
    has_many :layouts

    def all_navigations
      BigCms::Navigation.tree_to_a(self).reject{|a| a == self}
    end

    def copy(content_manager)
      # layouts
      content_manager.layouts.each do |layout|
        self.layouts << layout.clone
      end
      # pages
      content_manager.pages.each do |page|
        self.pages << page.clone
      end
      # components
      content_manager.components.each do |component|
        self.components << component.clone
      end
      self
    end
  end
end
