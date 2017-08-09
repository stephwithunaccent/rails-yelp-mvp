class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5).to_a
  validates :content, :rating, presence: true
  validates :rating, inclusion: {in: RATING}
  validates :rating, numericality: { only_integer: true }

end
