class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: { greater_than: 0, less_than: 6, message: "Rating must be between 1 and 5" }
end
