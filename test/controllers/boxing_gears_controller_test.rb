require "test_helper"

class BoxingGearsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boxing_gears_index_url
    assert_response :success
  end
end
