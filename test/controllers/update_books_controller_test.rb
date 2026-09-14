require "test_helper"

class UpdateBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get update_books_index_url
    assert_response :success
  end
end
