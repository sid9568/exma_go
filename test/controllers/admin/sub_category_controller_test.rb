require "test_helper"

class Admin::SubCategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_sub_category_index_url
    assert_response :success
  end
end
