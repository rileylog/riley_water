require 'test_helper'

class RecordsControllerTest < ActionController::TestCase
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post :create, record: { change_apps: @record.change_apps, comments: @record.comments, domestic: @record.domestic, flow: @record.flow, irrigation: @record.irrigation, owner: @record.owner, priority_date: @record.priority_date, proof_due_date: @record.proof_due_date, source: @record.source, stockwatering: @record.stockwatering, type: @record.type, volume: @record.volume }
    end

    assert_redirected_to record_path(assigns(:record))
  end

  test "should show record" do
    get :show, id: @record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record
    assert_response :success
  end

  test "should update record" do
    patch :update, id: @record, record: { change_apps: @record.change_apps, comments: @record.comments, domestic: @record.domestic, flow: @record.flow, irrigation: @record.irrigation, owner: @record.owner, priority_date: @record.priority_date, proof_due_date: @record.proof_due_date, source: @record.source, stockwatering: @record.stockwatering, type: @record.type, volume: @record.volume }
    assert_redirected_to record_path(assigns(:record))
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete :destroy, id: @record
    end

    assert_redirected_to records_path
  end
end
