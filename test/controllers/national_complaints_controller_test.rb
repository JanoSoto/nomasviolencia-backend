require 'test_helper'

class NationalComplaintsControllerTest < ActionController::TestCase
  setup do
    @national_complaint = national_complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:national_complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create national_complaint" do
    assert_difference('NationalComplaint.count') do
      post :create, national_complaint: { institution: @national_complaint.institution, phone_number: @national_complaint.phone_number, web_page: @national_complaint.web_page }
    end

    assert_redirected_to national_complaint_path(assigns(:national_complaint))
  end

  test "should show national_complaint" do
    get :show, id: @national_complaint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @national_complaint
    assert_response :success
  end

  test "should update national_complaint" do
    patch :update, id: @national_complaint, national_complaint: { institution: @national_complaint.institution, phone_number: @national_complaint.phone_number, web_page: @national_complaint.web_page }
    assert_redirected_to national_complaint_path(assigns(:national_complaint))
  end

  test "should destroy national_complaint" do
    assert_difference('NationalComplaint.count', -1) do
      delete :destroy, id: @national_complaint
    end

    assert_redirected_to national_complaints_path
  end
end
