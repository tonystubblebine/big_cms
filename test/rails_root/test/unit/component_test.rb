require 'test_helper'

class ComponentTest < ActiveSupport::TestCase
  test "can load component" do
    assert BigCms::Component.first
  end

  test "editing a component creates a new version" do
    component = components(:one)

    assert_difference('component.reload.versions.size') do
      component.update_attributes(:content => "New Content")
    end
  end

end
