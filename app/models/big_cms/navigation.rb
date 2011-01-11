module BigCms
  class Navigation < ActiveRecord::Base
    unloadable
    belongs_to :navigationable, :polymorphic => true
    has_many :navigations, :as => :navigationable
    has_many :pages

    validates_presence_of :title, :url, :navigationable_id, :navigationable_type

    def self.list_for_select(root, prefix = "")
      return if root.nil?
      result = [["#{prefix}/", to_select_value(root)]]
      root.navigations.each do |nav|
        result.concat list_for_select(nav, "/#{nav.title}")
      end
      result
    end 

    def self.to_select_value(root)
      "#{root.class.to_s}::#{root.id}"
    end

    def self.tree_to_a(root)
      result = [root]
      root.navigations.each do |nav|
        result.concat tree_to_a(nav)
      end
      result
    end 

  end
end
