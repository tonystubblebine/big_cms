require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  include BigAuth::TestHelper
  setup do
    @controller = BigCms::PagesController.new
    @page = pages(:one)
    login_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page" do
    assert_difference('BigCms::Page.count') do
      post :create, :big_cms_page => @page.attributes
    end

    assert_redirected_to big_cms_page_path(assigns(:page))
  end

  test "should show page" do
    get :show, :id => @page.to_param
    assert_response :success
  end

  test "should show home page" do
    get :show, :id => "_home"

    assert_response :success
    assert_equal content_managers(:one).navigations.first.pages.first, assigns(:page)
  end

  test "should get edit" do
    get :edit, :id => @page.to_param
    assert_response :success
  end

  test "should update page" do
    put :update, :id => @page.to_param, :big_cms_page => @page.attributes
    assert_redirected_to big_cms_page_path(assigns(:page))
  end

  test "should destroy page" do
    assert_difference('BigCms::Page.count', -1) do
      delete :destroy, :id => @page.to_param
    end

    assert_redirected_to big_cms_pages_path
  end
end
