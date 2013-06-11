class Deck < ActiveRecord::Base
  has_many :cards
  belongs_to :user
  has_many :rounds
end
