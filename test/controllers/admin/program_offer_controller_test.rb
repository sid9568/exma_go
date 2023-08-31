require "test_helper"

class Admin::ProgramOfferControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_program_offer_index_url
    assert_response :success
  end
end
