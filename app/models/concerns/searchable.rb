module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model

    mapping do
      # ...
    end

    def self.search(query)
      # Listing.where("title ilike ?", "%#{query}%")
      Elasticsearch::Model.search(query, [Listing]).results.to_a.map(&:to_hash)
      # ...
    end

    # def as_indexed_json
    #   self.as_json({
    #     only: [:title, :price, :model, :engine, :city]
    #     # only: [:title, :price, :model, :engine, :city],
    #     # include: {
    #     #   maker: { only: :name },
    #     # }
    #   })
    # end
  end
end