require 'test_helper'

class NavigationsControllerTest < ActionController::TestCase
  setup do
    @controller = BigCms::NavigationsController.new
    @navigation = navigations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:navigations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create navigation" do
    assert_difference('BigCms::Navigation.count') do
      post :create, :big_cms_navigation => @navigation.attributes
    end

    assert_redirected_to big_cms_navigation_path(assigns(:navigation))
  end

  test "should show navigation" do
    get :show, :id => @navigation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @navigation.to_param
    assert_response :success
  end

  test "should update navigation" do
    put :update, :id => @navigation.to_param, :big_cms_navigation => @navigation.attributes
    assert_redirected_to big_cms_navigation_path(assigns(:navigation))
  end

  test "should destroy navigation" do
    assert_difference('BigCms::Navigation.count', -1) do
      delete :destroy, :id => @navigation.to_param
    end

    assert_redirected_to big_cms_navigations_path
  end
end
