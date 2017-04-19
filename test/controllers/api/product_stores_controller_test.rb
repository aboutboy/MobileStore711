require 'test_helper'

class Api::ProductStoresControllerTest < ActionDispatch::IntegrationTest
  test "should get get_products_from_store" do
    get api_product_stores_get_products_from_store_url
    assert_response :success
  end

end
