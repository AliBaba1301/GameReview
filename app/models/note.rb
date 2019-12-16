class Note < ApplicationRecord
    has_one :user
    belongs_to :game
    validates_presence_of :notes
end
