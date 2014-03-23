require 'test_helper'

class UserSummariesControllerTest < ActionController::TestCase
  setup do
    @user_summary = user_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_summary" do
    assert_difference('UserSummary.count') do
      post :create, user_summary: { company_id: @user_summary.company_id, exp: @user_summary.exp, title: @user_summary.title }
    end

    assert_redirected_to user_summary_path(assigns(:user_summary))
  end

  test "should show user_summary" do
    get :show, id: @user_summary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_summary
    assert_response :success
  end

  test "should update user_summary" do
    patch :update, id: @user_summary, user_summary: { company_id: @user_summary.company_id, exp: @user_summary.exp, title: @user_summary.title }
    assert_redirected_to user_summary_path(assigns(:user_summary))
  end

  test "should destroy user_summary" do
    assert_difference('UserSummary.count', -1) do
      delete :destroy, id: @user_summary
    end

    assert_redirected_to user_summaries_path
  end
end
