require "test_helper"

class PunchingBagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get punching_bags_index_url
    assert_response :success
  end
end
