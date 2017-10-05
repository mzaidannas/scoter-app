class AddContactDetailsToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :person_name, :string
    add_column :listings, :mobile, :string
    add_column :listings, :city, :string
  end
end
