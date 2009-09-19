require 'test_helper'

class PledgesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pledges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pledge" do
    assert_difference('Pledge.count') do
      post :create, :pledge => { }
    end

    assert_redirected_to pledge_path(assigns(:pledge))
  end

  test "should show pledge" do
    get :show, :id => pledges(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pledges(:one).to_param
    assert_response :success
  end

  test "should update pledge" do
    put :update, :id => pledges(:one).to_param, :pledge => { }
    assert_redirected_to pledge_path(assigns(:pledge))
  end

  test "should destroy pledge" do
    assert_difference('Pledge.count', -1) do
      delete :destroy, :id => pledges(:one).to_param
    end

    assert_redirected_to pledges_path
  end
end
