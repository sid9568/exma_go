require "test_helper"

class Admin::PorgramControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_porgram_index_url
    assert_response :success
  end
end
