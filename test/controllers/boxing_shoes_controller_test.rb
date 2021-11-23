require "test_helper"

class BoxingShoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boxing_shoes_index_url
    assert_response :success
  end
end
