class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def air_date
    self.date.strftime('%D')
  end

  def details
    "##{self.number.to_s} - #{self.air_date}"
  end

  def avg_rating
    all = self.appearances.map{|app| app.rating}
    all.sum / all.length
  end

end
