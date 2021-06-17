require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get root_url
    assert_response :success
  end

  # test "should get cart" do
  #   get cart_url
  #   assert_response :success
  # end

end
