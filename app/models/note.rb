class Note < ApplicationRecord
    has_one :user # a note can only belong to one user
    validates :notes_taken, presence: true  #ensures that the note form is filled out correctly
end
