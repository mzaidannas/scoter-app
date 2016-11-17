class Listing < ActiveRecord::Base
	has_many :images
	belongs_to :maker
	accepts_nested_attributes_for :images
end
