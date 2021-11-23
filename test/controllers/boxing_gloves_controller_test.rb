require "test_helper"

class BoxingGlovesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boxing_gloves_index_url
    assert_response :success
  end
end
