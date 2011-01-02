module BigCms
  class ContentManager < ActiveRecord::Base
    unloadable
    has_many :pages
    has_many :components
    has_many :navigations, :as => :navigationable
    has_many :files, :class_name => "CmsFile"
  end
end
