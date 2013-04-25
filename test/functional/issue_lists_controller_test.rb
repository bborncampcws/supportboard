require 'test_helper'

class IssueListsControllerTest < ActionController::TestCase
  setup do
    @issue_list = issue_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_list" do
    assert_difference('IssueList.count') do
      post :create, issue_list: {  }
    end

    assert_redirected_to issue_list_path(assigns(:issue_list))
  end

  test "should show issue_list" do
    get :show, id: @issue_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_list
    assert_response :success
  end

  test "should update issue_list" do
    put :update, id: @issue_list, issue_list: {  }
    assert_redirected_to issue_list_path(assigns(:issue_list))
  end

  test "should destroy issue_list" do
    assert_difference('IssueList.count', -1) do
      delete :destroy, id: @issue_list
    end

    assert_redirected_to issue_lists_path
  end
end
