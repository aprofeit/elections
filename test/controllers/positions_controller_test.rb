require 'test_helper'

class PositionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get positions_new_url
    assert_response :success
  end

  test "should get index" do
    get positions_index_url
    assert_response :success
  end

end
