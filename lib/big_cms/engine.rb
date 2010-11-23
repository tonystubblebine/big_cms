require "big_cms"
require "rails"

module BigCms
 class Engine < Rails::Engine
    engine_name :big_cms

    rake_tasks do
      load "big_cms/railties/tasks.rake"
    end
  end
end
