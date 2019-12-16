require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "the truth" do
    assert true
  end

# Empty requests do not get sent
  test 'should not save empty request' do
    review = Review.new
    review.save
  end

# Delete a review
  test 'should delete review' do
    review = Review.new(rating: 1 ,review_body: "MyText", game_id: 1)
    review.destroy
  end
end
