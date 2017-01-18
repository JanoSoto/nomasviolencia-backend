require 'test_helper'

class UsachCompaintsControllerTest < ActionController::TestCase
  setup do
    @usach_compaint = usach_compaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usach_compaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usach_compaint" do
    assert_difference('UsachCompaint.count') do
      post :create, usach_compaint: { content: @usach_compaint.content }
    end

    assert_redirected_to usach_compaint_path(assigns(:usach_compaint))
  end

  test "should show usach_compaint" do
    get :show, id: @usach_compaint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usach_compaint
    assert_response :success
  end

  test "should update usach_compaint" do
    patch :update, id: @usach_compaint, usach_compaint: { content: @usach_compaint.content }
    assert_redirected_to usach_compaint_path(assigns(:usach_compaint))
  end

  test "should destroy usach_compaint" do
    assert_difference('UsachCompaint.count', -1) do
      delete :destroy, id: @usach_compaint
    end

    assert_redirected_to usach_compaints_path
  end
end
