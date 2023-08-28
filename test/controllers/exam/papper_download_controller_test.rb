require "test_helper"

class Exam::PapperDownloadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exam_papper_download_index_url
    assert_response :success
  end
end
