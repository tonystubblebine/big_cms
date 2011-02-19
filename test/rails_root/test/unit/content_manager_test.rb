require 'test_helper'

class ContentManagerTest < ActiveSupport::TestCase
  test "copy(content_manager)" do
    cms = content_managers(:one)

    new_cms = BigCms::ContentManager.new.copy(cms)

    assert_equal cms.layouts.first.name, new_cms.layouts.first.name
    assert_equal cms.pages.size, new_cms.pages.size
    assert_equal cms.components.size, new_cms.components.size
  end
end
