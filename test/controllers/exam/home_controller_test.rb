require "test_helper"

class Exam::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exam_home_index_url
    assert_response :success
  end
end
