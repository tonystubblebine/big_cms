require 'test_helper'

class BigCms::PageVersionsControllerTest < ActionController::TestCase
  setup do
    @page = BigCms::Page.create(pages(:one).attributes) # first version isn't getting created when fixtures are loaded
  end

  test "should get index" do
    get :index, :page_id => @page.id
    assert_response :success
    assert_not_nil assigns(:versions)
  end

  test "should get new" do
    get :new, :page_id => @page
    assert_response :success
  end

  test "should revert to old version" do
    @page.update_attributes(:title => "new title")
    assert_difference('@page.reload.versions.count') do
      post :create, :page_id => @page.id, :revert_to => @page.versions.first.version
    end

    assert_redirected_to edit_big_cms_page_path(@page)
    assert_equal pages(:one).title, @page.title
  end

  test "should show big_cms_page_version" do
    get :show, :page_id => @page, :id => @page.versions.first.version
    assert_response :success
  end

  test "should get edit" do
    get :edit, :page_id => @page, :id => @page.versions.first.version
    assert_response :success
  end

  test "should update big_cms_page_version" do
    put :update, :page_id => @page, :id => @page.versions.first.version, :big_cms_page_version => {:title => "new title", :content => "new content"} 
    assert_redirected_to big_cms_page_version_path(assigns(:version))
  end

  test "should destroy big_cms_page_version" do
    assert_difference('@page.reload.versions.count', -1) do
      delete :destroy, :page_id => @page, :id => @page.versions.first.version
    end

    assert_redirected_to big_cms_page_versions_path
  end
end
