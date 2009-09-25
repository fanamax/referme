require 'test_helper'

class ReferalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referal" do
    assert_difference('Referal.count') do
      post :create, :referal => { }
    end

    assert_redirected_to referal_path(assigns(:referal))
  end

  test "should show referal" do
    get :show, :id => referals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => referals(:one).to_param
    assert_response :success
  end

  test "should update referal" do
    put :update, :id => referals(:one).to_param, :referal => { }
    assert_redirected_to referal_path(assigns(:referal))
  end

  test "should destroy referal" do
    assert_difference('Referal.count', -1) do
      delete :destroy, :id => referals(:one).to_param
    end

    assert_redirected_to referals_path
  end
end
