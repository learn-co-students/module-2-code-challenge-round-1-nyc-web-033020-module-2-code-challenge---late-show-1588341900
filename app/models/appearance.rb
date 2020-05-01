class Appearance < ApplicationRecord

  belongs_to :guest
  belongs_to :episode

  #VALIDATONS

  validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  #not 100 percent sure about numericality syntax

end
