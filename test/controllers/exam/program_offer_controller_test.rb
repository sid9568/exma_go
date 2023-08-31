require "test_helper"

class Exam::ProgramOfferControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exam_program_offer_index_url
    assert_response :success
  end
end
