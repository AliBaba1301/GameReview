class Game < ApplicationRecord
    searchkick # used for my seach bar
    belongs_to :user # a game can only belong to one user
    has_many :review # many review can belong to one game
    has_attached_file :image, styles: { medium: "400x600#"}, default_url: "/images/:style/missing.png" #ensures that if no image is uploaded there the page isn't left blank
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/#image validation
end
