class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def all_ratings
        self.appearances.map do |a|
            a.rating 
        end
    end

    def average_rating
        total = all_ratings.reduce(0) {|avg, num| avg + num}
        total.to_f / all_ratings.count
    end

end
