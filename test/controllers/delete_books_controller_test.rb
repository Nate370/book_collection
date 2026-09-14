require "test_helper"

class DeleteBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get delete_books_index_url
    assert_response :success
  end
end
