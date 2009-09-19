require 'test_helper'

class AttemptsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attempts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attempt" do
    assert_difference('Attempt.count') do
      post :create, :attempt => { }
    end

    assert_redirected_to attempt_path(assigns(:attempt))
  end

  test "should show attempt" do
    get :show, :id => attempts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => attempts(:one).to_param
    assert_response :success
  end

  test "should update attempt" do
    put :update, :id => attempts(:one).to_param, :attempt => { }
    assert_redirected_to attempt_path(assigns(:attempt))
  end

  test "should destroy attempt" do
    assert_difference('Attempt.count', -1) do
      delete :destroy, :id => attempts(:one).to_param
    end

    assert_redirected_to attempts_path
  end
end
