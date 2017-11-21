class Pet < ApplicationRecord

  CATEGORIES = ["dog", "cat", "bird", "fish", "human"]

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }

end
