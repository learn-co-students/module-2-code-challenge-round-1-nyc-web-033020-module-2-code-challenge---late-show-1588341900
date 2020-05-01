class Appearance < ApplicationRecord
    belongs_to :guest 
    belongs_to :episode 

    validates_inclusion_of :rating, :in => 1..5
    # validate :guest_already_on_ep


    # def guest_already_on_ep 
    #     if self.episode_id == self.guest_id 
    #         self.errors.full_messages = "Guest Already Appeared on this Episode"
    #     end #did not have time to see if this works but I dont think it does 
    # end 
end
