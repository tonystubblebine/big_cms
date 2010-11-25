module BigCms
  class Page < ActiveRecord::Base
    unloadable
    acts_as_versioned :if => Proc.new {|v| v.versions.size == 0 or v.title_changed? or v.content_changed? }
    self.non_versioned_columns += %w[content_type content_manager_id navigation_id render_type status version new_content new_title]
  end
end
