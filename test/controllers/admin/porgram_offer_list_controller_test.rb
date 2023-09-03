require "test_helper"

class Admin::PorgramOfferListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_porgram_offer_list_index_url
    assert_response :success
  end
end
