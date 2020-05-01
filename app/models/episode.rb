class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    # def avg_rating
    #     rating_array = []
    #     self.appearances.each do |appearance|
    #         rating_array << appearance.rating.to_i
    #     end

    #     if rating_array != 0 
    #         avg = (rating_array.sum / rating_array.length )
    #     end
    #     avg
    # end
end
