require "test_helper"

class AddBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get add_books_index_url
    assert_response :success
  end
end
