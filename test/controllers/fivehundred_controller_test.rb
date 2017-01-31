require 'test_helper'

class FivehundredControllerTest < ActionController::TestCase
  test "should get popular" do
    get :popular
    assert_response :success
  end

end
