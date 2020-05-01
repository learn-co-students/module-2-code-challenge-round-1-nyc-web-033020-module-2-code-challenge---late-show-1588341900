class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, presence: true
  validates :rating, numericality: true

  def rating_str
    self.rating.to_s
  end
end
