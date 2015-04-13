require 'test_helper'

class HeadTeacherCommentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:head_teacher_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create head_teacher_comment" do
    assert_difference('HeadTeacherComment.count') do
      post :create, :head_teacher_comment => { }
    end

    assert_redirected_to head_teacher_comment_path(assigns(:head_teacher_comment))
  end

  test "should show head_teacher_comment" do
    get :show, :id => head_teacher_comments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => head_teacher_comments(:one).to_param
    assert_response :success
  end

  test "should update head_teacher_comment" do
    put :update, :id => head_teacher_comments(:one).to_param, :head_teacher_comment => { }
    assert_redirected_to head_teacher_comment_path(assigns(:head_teacher_comment))
  end

  test "should destroy head_teacher_comment" do
    assert_difference('HeadTeacherComment.count', -1) do
      delete :destroy, :id => head_teacher_comments(:one).to_param
    end

    assert_redirected_to head_teacher_comments_path
  end
end
