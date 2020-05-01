class Episode < ApplicationRecord
    has_many :appearances 
    has_many :guests, through: :appearances 
    def average_rating
        self.appearances.map do |a|
            a.numeric_rating 
        end
    end
end
