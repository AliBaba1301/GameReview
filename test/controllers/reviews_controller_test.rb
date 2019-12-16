require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get games_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_games_review_url
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post games_reviews_url, params: { review: { rating: @review.rating, review_body: @review.review_body } }
    end

    assert_redirected_to review_url(Review.last)
  end

  test "should show review" do
    get games_review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get games_edit_review_url(@review)
    assert_response :success
  end

  test "should update review" do
    patch games_review_url(@review), params: { review: { rating: @review.rating, review_body: @review.review_body } }
    assert_redirected_to games_review_url(@review)
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete games_review_url(@review)
    end

    assert_redirected_to reviews_url
  end
end
