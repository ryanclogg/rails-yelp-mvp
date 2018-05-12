class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :phone_number
      t.string :category
      t.references :reviews, foreign_key: true

      t.timestamps
    end
  end
end
