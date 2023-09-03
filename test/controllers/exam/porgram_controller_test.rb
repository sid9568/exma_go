require "test_helper"

class Exam::PorgramControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exam_porgram_index_url
    assert_response :success
  end
end
