class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.string :title
      t.string :starting_point
      t.string :destination
      t.string :image_url
      t.text :description
      t.integer :price
      t.string :duration
      t.boolean :food_and_drinks
      t.boolean :magic
      t.boolean :entertainment
      t.integer :seats
      t.date :ride_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
