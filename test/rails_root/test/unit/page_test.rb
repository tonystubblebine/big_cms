require 'test_helper'

class PageTest < ActiveSupport::TestCase
  test "can load page" do
    assert BigCms::Page.first
  end

  test "editing a page creates a new version" do
    page = pages(:one)

    assert_difference('page.reload.versions.size') do
      page.update_attributes(:title => "New Title")
    end
  end
end
