require 'test_helper'

class Api::OrderProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_order_products_create_url
    assert_response :success
  end

  test "should get get_products_from_order" do
    get api_order_products_get_products_from_order_url
    assert_response :success
  end

  test "should get show" do
    get api_order_products_show_url
    assert_response :success
  end

end
