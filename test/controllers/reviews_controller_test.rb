require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get new" do
    get ("/games/"+(@review.game_id.to_s))
    assert_response :success
  end


end
