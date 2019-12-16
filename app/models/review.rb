class Review < ApplicationRecord
    has_one :user
    belongs_to :game


    validates_presence_of :rating, :review_body
end
