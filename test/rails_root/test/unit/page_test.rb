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

  test "reverting a page changes the page and creates a new version" do
    page = BigCms::Page.create(pages(:one).attributes)
    original_title = page.title
    original_number_of_revisions = page.versions.size

    page.update_attributes(:title => "new title")

    page.revert!(page.versions.first)
    assert_equal original_title, page.title
    assert original_number_of_revisions, page.versions.last.version
  end 
end
