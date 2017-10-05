class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :model
      t.string :make
      t.string :engine
      t.string :color
      t.string :miles
      t.string :mileage

      t.timestamps null: false
    end
  end
end
