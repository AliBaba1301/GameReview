require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
    @game = games(:one)
  end

  
  test "should get new" do
    get ("/games/"+(@game.id.to_s))
    assert_response :success
  end

end
