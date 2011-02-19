require "rails"
require 'action_controller'
#require 'acts_as_versioned'
require "big_cms"
require 'big_cms/action_controller_ext'
module BigCms
 class Engine < Rails::Engine
    rake_tasks do
      load "big_cms/railties/tasks.rake"
    end
  end
end
