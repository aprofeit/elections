require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "can only access vote page with proper token" do
    get "/votes/new", params: { token: 'abc123' }

    assert_response :success
  end

  test "cannot view vote page without proper token" do
    get "/votes/new", params: { token: 'fuck' }

    assert
  end
end
