class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    # def average_rating  
    #     self.appearances.inject do |sum, a|
    #         sum + a.rating
    #     end
    # end
end
