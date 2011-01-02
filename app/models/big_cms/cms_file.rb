module BigCms
  class CmsFile < ActiveRecord::Base
    unloadable

    belongs_to :content_manager
    # TODO: 2011-01-01 <tony@crowdvine.com> -- Make Paperclip options configurable
    has_attached_file :file, 
                      :styles => { :thumb => "100x100" },
                      :storage => :s3,
                      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", 
                      :path => "/system/:class/:id_partition/:style/:filename"
    validates_presence_of :file_file_name, :content_manager_id

    def image?
      self.file.content_type.match(/^image/) ? true : false
    end
  end
end
