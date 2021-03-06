require 'test_helper'

class LayoutsControllerTest < ActionController::TestCase
  include BigAuth::TestHelper
  setup do
    @controller = BigCms::LayoutsController.new
    @layout = layouts(:one)
    login_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:layouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create layout" do
    assert_difference('BigCms::Layout.count') do
      post :create, :big_cms_layout => @layout.attributes
    end

    assert_redirected_to big_cms_layout_path(assigns(:layout))
  end

  test "should show layout" do
    get :show, :id => @layout.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @layout.to_param
    assert_response :success
  end

  test "should update layout" do
    put :update, :id => @layout.to_param, :big_cms_layout => @layout.attributes
    assert_redirected_to big_cms_layout_path(assigns(:layout))
  end

  test "should destroy layout" do
    assert_difference('BigCms::Layout.count', -1) do
      delete :destroy, :id => @layout.to_param
    end

    assert_redirected_to big_cms_layouts_path
  end
end
