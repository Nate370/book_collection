require "test_helper"

class ShowDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_details_index_url
    assert_response :success
  end
end
