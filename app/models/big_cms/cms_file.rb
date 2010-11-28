module BigCms
  class CmsFile < ActiveRecord::Base
    unloadable
    belongs_to :content_manager
    validates_presence_of :file_file_name, :content_manager_id
  end
end
