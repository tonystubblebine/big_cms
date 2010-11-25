require 'test_helper'

class NavigationsControllerTest < ActionController::TestCase
  setup do
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
    assert_difference('Navigation.count') do
      post :create, :navigation => @navigation.attributes
    end

    assert_redirected_to navigation_path(assigns(:navigation))
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
    put :update, :id => @navigation.to_param, :navigation => @navigation.attributes
    assert_redirected_to navigation_path(assigns(:navigation))
  end

  test "should destroy navigation" do
    assert_difference('Navigation.count', -1) do
      delete :destroy, :id => @navigation.to_param
    end

    assert_redirected_to navigations_path
  end
end
