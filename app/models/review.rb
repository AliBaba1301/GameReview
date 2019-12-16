class Review < ApplicationRecord
    has_one :user #a review can only be posted by one user
    belongs_to :game # a review can only be posted for a specific game
    validates_presence_of :rating, :review_body, presence: true  #ensures that the review form is filled out correctly
end
