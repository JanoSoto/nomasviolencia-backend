require 'test_helper'

class ForcedReportsControllerTest < ActionController::TestCase
  setup do
    @forced_report = forced_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forced_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forced_report" do
    assert_difference('ForcedReport.count') do
      post :create, forced_report: { content: @forced_report.content }
    end

    assert_redirected_to forced_report_path(assigns(:forced_report))
  end

  test "should show forced_report" do
    get :show, id: @forced_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forced_report
    assert_response :success
  end

  test "should update forced_report" do
    patch :update, id: @forced_report, forced_report: { content: @forced_report.content }
    assert_redirected_to forced_report_path(assigns(:forced_report))
  end

  test "should destroy forced_report" do
    assert_difference('ForcedReport.count', -1) do
      delete :destroy, id: @forced_report
    end

    assert_redirected_to forced_reports_path
  end
end
