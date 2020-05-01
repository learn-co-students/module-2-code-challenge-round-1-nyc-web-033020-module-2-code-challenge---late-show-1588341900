class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def appearance
        answer = self.appearances
    end
end
