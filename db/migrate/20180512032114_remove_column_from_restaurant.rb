class RemoveColumnFromRestaurant < ActiveRecord::Migration[5.2]
  def change
    remove_reference :restaurants, :reviews, foreign_key: true
  end
end
