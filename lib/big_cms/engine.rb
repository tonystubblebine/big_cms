require "big_cms"
require "rails"
require 'action_controller'
require 'big_cms/action_controller_ext'
module BigCms
 class Engine < Rails::Engine
    engine_name :big_cms

    rake_tasks do
      load "big_cms/railties/tasks.rake"
    end
  end
end
