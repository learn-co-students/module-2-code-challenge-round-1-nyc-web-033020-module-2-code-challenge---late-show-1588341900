class CreateGuestEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_episodes do |t|
      t.belongs_to :guest, foreign_key: true
      t.belongs_to :episode, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
