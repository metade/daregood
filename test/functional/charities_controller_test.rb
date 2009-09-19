require 'test_helper'

class CharitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charity" do
    assert_difference('Charity.count') do
      post :create, :charity => { }
    end

    assert_redirected_to charity_path(assigns(:charity))
  end

  test "should show charity" do
    get :show, :id => charities(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => charities(:one).to_param
    assert_response :success
  end

  test "should update charity" do
    put :update, :id => charities(:one).to_param, :charity => { }
    assert_redirected_to charity_path(assigns(:charity))
  end

  test "should destroy charity" do
    assert_difference('Charity.count', -1) do
      delete :destroy, :id => charities(:one).to_param
    end

    assert_redirected_to charities_path
  end
end
