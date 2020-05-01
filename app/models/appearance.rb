class Appearance < ApplicationRecord
    belongs_to :episode 
    belongs_to :guest 

    validates :rating, numericality: { greater_than_equal_to: 1, less_than_equal_to: 5 } 
    validates :episode_id, :guest_id, uniqueness: true 
end
