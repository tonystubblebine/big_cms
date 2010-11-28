require 'test_helper'
class CmsFilesControllerTest < ActionController::TestCase
  setup do
    @controller = BigCms::CmsFilesController.new
    @cms_file = cms_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_file" do
    assert_difference('BigCms::CmsFile.count') do
      post :create, :big_cms_cms_file => @cms_file.attributes
    end

    assert_redirected_to big_cms_cms_file_path(assigns(:cms_file))
  end

  test "should show cms_file" do
    get :show, :id => @cms_file.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cms_file.to_param
    assert_response :success
  end

  test "should update cms_file" do
    put :update, :id => @cms_file.to_param, :big_cms_cms_file => @cms_file.attributes
    assert_redirected_to big_cms_cms_file_path(assigns(:cms_file))
  end

  test "should destroy cms_file" do
    assert_difference('BigCms::CmsFile.count', -1) do
      delete :destroy, :id => @cms_file.to_param
    end

    assert_redirected_to big_cms_cms_files_path
  end
end
