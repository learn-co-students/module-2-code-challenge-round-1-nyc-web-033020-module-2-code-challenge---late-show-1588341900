class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def average_rating
    if self.appearances.first
      ratings = self.appearances.all.map { |app| app.rating }
      ratings.reduce { |acc, cur| acc + cur } / ratings.length.to_f
    else
      return 1
    end
  end
end
