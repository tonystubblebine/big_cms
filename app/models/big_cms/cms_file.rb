module BigCms
  class CmsFile < ActiveRecord::Base
    unloadable

    belongs_to :content_manager
    has_attached_file :file, :styles => { :thumb => "100x100" }
    validates_presence_of :file_file_name, :content_manager_id

    def image?
      self.file.content_type.match(/^image/) ? true : false
    end
  end
end
