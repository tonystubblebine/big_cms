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
  end
end
