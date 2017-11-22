class Review < ApplicationRecord
  RATING = [0,1,2,3,4,5]
  validates :content, presence: true
  validates :rating, inclusion: { in: RATING, allow_nil: false }
  belongs_to :restaurant
end
