class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, presence: true
  validates :rating, numericality: true
  validates_uniqueness_of :guest_id, scope: [:episode], message: "alreay added to show!"
end

