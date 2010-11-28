module BigCms
  class Component < ActiveRecord::Base
    unloadable
    belongs_to :content_manager
    acts_as_versioned :if => Proc.new {|v| v.versions.size == 0 or v.content_changed? }
    self.non_versioned_columns += %w[content_type content_manager_id navigation_id render_type status version new_content]

    validates_presence_of :content, :name, :content_manager_id
  end
end
