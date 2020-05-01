class Guest < ApplicationRecord
    has_many :appearances 
    has_many :episodes, through: :appearances

    def appearances 
        Appearance.all.select do |app|
            app.guest == self 
        end
    end 

    def total_rating 
        appearances.map do |app| 
            app.rating 
        end
    end 
    
    def average_rating 
        total_rating.sum / appearances.count 
    end 

    # def highest_rating 
    #     self.appearances.map do |app|
    #         app.rating 
    #     end.max_by  
    # end #did not have time to test but dont think this works 

end
