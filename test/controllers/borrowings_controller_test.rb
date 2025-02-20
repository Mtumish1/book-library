require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get borrowings_create_url
    assert_response :success
  end

  test "should get return_book" do
    get borrowings_return_book_url
    assert_response :success
  end
end
