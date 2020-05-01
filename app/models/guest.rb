class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  def appearance_rating(episode)
    appearance = Appearance.where(guest_id: self.id, episode_id: episode.id)
  end
end
