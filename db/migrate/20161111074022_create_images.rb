class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image_url
      t.integer :listing_id

      t.timestamps null: false
    end
  end
end
