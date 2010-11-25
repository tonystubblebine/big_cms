require 'test_helper'

class ContentManagersControllerTest < ActionController::TestCase
  setup do
    @controller = BigCms::ContentManagersController.new
    @content_manager = content_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_managers)
  end

  test "should get /content_manager" do
    get :show, :id => "current"

    assert_response :success
    assert_not_nil assigns(:content_manager)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_manager" do
    assert_difference('BigCms::ContentManager.count') do
      post :create, :content_manager => @content_manager.attributes
    end

    assert_redirected_to big_cms_content_manager_path(assigns(:content_manager))
  end

  test "should show content_manager" do
    get :show, :id => @content_manager.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @content_manager.to_param
    assert_response :success
  end

  test "should update content_manager" do
    put :update, :id => @content_manager.to_param, :content_manager => @content_manager.attributes
    assert_redirected_to big_cms_content_manager_path(assigns(:content_manager))
  end

  test "should destroy content_manager" do
    assert_difference('BigCms::ContentManager.count', -1) do
      delete :destroy, :id => @content_manager.to_param
    end

    assert_redirected_to big_cms_content_managers_path
  end
end
