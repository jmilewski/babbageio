require 'test_helper'

class PriceEarningsControllerTest < ActionController::TestCase
  setup do
    @price_earning = price_earnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:price_earnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create price_earning" do
    assert_difference('PriceEarning.count') do
      post :create, price_earning: { earnings: @price_earning.earnings, petotal: @price_earning.petotal, price: @price_earning.price }
    end

    assert_redirected_to price_earning_path(assigns(:price_earning))
  end

  test "should show price_earning" do
    get :show, id: @price_earning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @price_earning
    assert_response :success
  end

  test "should update price_earning" do
    patch :update, id: @price_earning, price_earning: { earnings: @price_earning.earnings, petotal: @price_earning.petotal, price: @price_earning.price }
    assert_redirected_to price_earning_path(assigns(:price_earning))
  end

  test "should destroy price_earning" do
    assert_difference('PriceEarning.count', -1) do
      delete :destroy, id: @price_earning
    end

    assert_redirected_to price_earnings_path
  end
end
