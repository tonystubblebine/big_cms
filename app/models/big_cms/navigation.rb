module BigCms
  class Navigation < ActiveRecord::Base
    unloadable
    belongs_to :navigationable, :polymorphic => true
    has_many :navigations, :as => :navigationable, :order => "position ASC"
    has_many :pages

    validates_presence_of :title, :url, :navigationable_id, :navigationable_type

    liquid_methods :slug, :title, :url, :navigations

    def ancestors_and_self(result = [])
      if navigationable and navigationable.respond_to?(:ancestors_and_self)
        return navigationable.ancestors_and_self(result << self)
      else
        return result
      end
    end

    def next_available_position
      if self.navigationable
        self.navigationable.navigations.size + 1 
      else 
        0
      end
    end      

    def slug
      # Perform transliteration to replace non-ascii characters with an ascii
      # character
      value = self.title.mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n, '').to_s
    
      # Remove single quotes from input
      value.gsub!(/[']+/, '')

      # Replace any non-word character (\W) with a space
      value.gsub!(/\W+/, ' ')
    
      # Remove any whitespace before and after the string
      value.strip!
    
      # All characters should be downcased
      value.downcase!
    
      # Replace spaces with dashes
      value.gsub!(' ', '-')
    
      # Return the resulting slug, prefixed by id
      "#{id.to_s}-#{value}"
    end

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
