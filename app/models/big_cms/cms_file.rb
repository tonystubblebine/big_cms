module BigCms
  class CmsFile < ActiveRecord::Base
    unloadable
    mount_uploader :file, CmsFileUploader, :mount_on => :file_file_name
    belongs_to :content_manager
    #has_attached_file :file, 
    #                  :styles => { :thumb => "100x100" },
    #                  :storage => :s3,
    #                  :s3_credentials => "#{::Rails.root.to_s}/config/s3.yml", 
    #                  :path => "/system/:class/:id_partition/:style/:filename"
    validates_presence_of :content_manager_id

    def image?
      self.file.path.match(/\.(?:jpg|jpeg|png|bmp|gif)/i) ? true : false
    end
  end
end
