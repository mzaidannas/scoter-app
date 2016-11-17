class AddContactDetailsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :person_name, :string
    add_column :listings, :mobile, :string
    add_column :listings, :city, :string
  end
end
