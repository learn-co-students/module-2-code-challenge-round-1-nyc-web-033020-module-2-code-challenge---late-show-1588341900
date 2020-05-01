class ChangeRatingToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :appearances, :rating, :integer
  end
end
