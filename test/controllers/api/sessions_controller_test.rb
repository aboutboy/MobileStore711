require 'test_helper'

class Api::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get api_sessions_login_url
    assert_response :success
  end

end
