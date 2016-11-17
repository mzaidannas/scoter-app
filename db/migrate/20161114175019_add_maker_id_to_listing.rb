class AddMakerIdToListing < ActiveRecord::Migration
  def change
    add_column :listings, :maker_id, :integer
  end
end
