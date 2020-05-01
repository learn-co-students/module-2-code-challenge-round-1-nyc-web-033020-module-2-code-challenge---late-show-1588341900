class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode


  #episode rating validation
  validates :rating, numericality: (less_than_or_equal_to: 5)

end
