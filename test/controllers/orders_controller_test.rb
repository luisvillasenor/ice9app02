require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get pending" do
    get :pending
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get resumen" do
    get :resumen
    assert_response :success
  end

end
