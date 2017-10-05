class AddMakerIdToListing < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :maker_id, :integer
  end
end
