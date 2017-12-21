class Game < ApplicationRecord
  has_many :ratings, dependent: :destroy
  validates :text, presence: true,
            length: { minimum: 5 }
end
