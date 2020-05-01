class Appearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :numeric_rating 
      t.integer :episode_id 
      t.integer :guest_id 
    end
  end
end
