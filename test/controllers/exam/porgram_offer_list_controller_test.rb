require "test_helper"

class Exam::PorgramOfferListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exam_porgram_offer_list_index_url
    assert_response :success
  end
end
