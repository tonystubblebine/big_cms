module BigCms
  class Page < ActiveRecord::Base
    unloadable

    belongs_to :navigation
    belongs_to :content_manager

    acts_as_versioned :if => Proc.new {|v| v.versions.size == 0 or v.title_changed? or v.content_changed? }
    self.non_versioned_columns += %w[content_type content_manager_id navigation_id render_type status version new_content new_title]

    validates_presence_of :content, :title, :content_manager_id

    liquid_methods :title

    def allow_public_views?
      !self.content_manager.private_pages?
    end

    def current_version?(version)
      self.version == version.version
    end

    def revert!(version)
      self.content = version.content
      self.title = version.title
      self.save
      self.versions.last.update_attributes({:clone_of => version.version})
    end

    # TODO: 2011-01-11 <tony+bigcms@tonystubblebine.com> -- Need consistency
    # with Navigation.slug. This one returns just the slug value, while
    # Navigatin.slug prepends the nav.id
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
      value
    end
  end
end
