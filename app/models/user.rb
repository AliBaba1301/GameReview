class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many  :game #one user can have many games
  has_many :review, dependent: :destroy #a user can post mnay reviews, however if they delete there account their reviews will also be delted
end
