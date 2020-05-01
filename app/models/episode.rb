class Episode < ApplicationRecord
    has_many :appearances 
    has_many :guests, through: :appearances

    def how_many_app
        Appearance.all.select do |ap|
            ap.episode_id == self.id
        end.count  
    end 

    def rating 
        Appearance.all.select do |ap|
            ap.episode_id == self.id
        end.map{ |ap| ap.rating }.sum 
    end 

    def average_rating 
        rating / how_many_app  
    end 
end
