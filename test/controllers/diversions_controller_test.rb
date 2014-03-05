require 'test_helper'

class DiversionsControllerTest < ActionController::TestCase
  setup do
    @diversion = diversions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diversions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diversion" do
    assert_difference('Diversion.count') do
      post :create, diversion: { name: @diversion.name, type: @diversion.type }
    end

    assert_redirected_to diversion_path(assigns(:diversion))
  end

  test "should show diversion" do
    get :show, id: @diversion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diversion
    assert_response :success
  end

  test "should update diversion" do
    patch :update, id: @diversion, diversion: { name: @diversion.name, type: @diversion.type }
    assert_redirected_to diversion_path(assigns(:diversion))
  end

  test "should destroy diversion" do
    assert_difference('Diversion.count', -1) do
      delete :destroy, id: @diversion
    end

    assert_redirected_to diversions_path
  end
end
