require 'test_helper'

class ComponentsControllerTest < ActionController::TestCase
  include BigAuth::TestHelper
  setup do
    @controller = BigCms::ComponentsController.new
    @component = components(:one)
    login_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:components)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component" do
    assert_difference('BigCms::Component.count') do
      post :create, :big_cms_component => @component.attributes
    end

    assert_redirected_to big_cms_component_path(assigns(:component))
  end

  test "should show component" do
    get :show, :id => @component.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @component.to_param
    assert_response :success
  end

  test "should update component" do
    put :update, :id => @component.to_param, :big_cms_component => @component.attributes
    assert_redirected_to big_cms_component_path(assigns(:component))
  end

  test "should destroy component" do
    assert_difference('BigCms::Component.count', -1) do
      delete :destroy, :id => @component.to_param
    end

    assert_redirected_to big_cms_components_path
  end
end
