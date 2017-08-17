require 'elasticsearch/model'

class Listing < ActiveRecord::Base
	include Searchable
	include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

	settings index: { number_of_shards: 1 }

	Elasticsearch::Model.client = Elasticsearch::Client.new log: true
  # settings index: { number_of_shards: 1 } do
  #   mappings dynamic: 'true' do
  #     indexes :title, :price, :model, :engine, :city
  #   end
  # end

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :title, analyzer: 'english', index_options: 'offsets'
      indexes :price, analyzer: 'english', index_options: 'offsets'
      indexes :model, analyzer: 'english', index_options: 'offsets'
      indexes :engine, analyzer: 'english', index_options: 'offsets'
      indexes :city, analyzer: 'english', index_options: 'offsets'
    end
  end


	has_many :images
	belongs_to :maker
	accepts_nested_attributes_for :images

end
