require 'test_helper'

class HeadTeacherReportCommentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:head_teacher_report_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create head_teacher_report_comment" do
    assert_difference('HeadTeacherReportComment.count') do
      post :create, :head_teacher_report_comment => { }
    end

    assert_redirected_to head_teacher_report_comment_path(assigns(:head_teacher_report_comment))
  end

  test "should show head_teacher_report_comment" do
    get :show, :id => head_teacher_report_comments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => head_teacher_report_comments(:one).to_param
    assert_response :success
  end

  test "should update head_teacher_report_comment" do
    put :update, :id => head_teacher_report_comments(:one).to_param, :head_teacher_report_comment => { }
    assert_redirected_to head_teacher_report_comment_path(assigns(:head_teacher_report_comment))
  end

  test "should destroy head_teacher_report_comment" do
    assert_difference('HeadTeacherReportComment.count', -1) do
      delete :destroy, :id => head_teacher_report_comments(:one).to_param
    end

    assert_redirected_to head_teacher_report_comments_path
  end
end
