module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model

    mapping do
    end

    def self.search(params)
      __elasticsearch__.search(build_query(params)).records
    end

   def self.build_query params
      must = []
      must.push build_match_query("title",params[:title]) if params[:title].present?
      must.push build_match_query("city",params[:city]) if params[:city].present?
      must.push build_range_query("price",params[:minPrice],params[:maxPrice]) if params[:minPrice].present? || params[:maxPrice].present?
      must.push build_range_query("model",params[:minYear],params[:maxYear]) if params[:minYear].present? || params[:maxYear].present?
      must.push build_range_query("engine",params[:minEngine],params[:maxEngine]) if params[:minEngine].present? || params[:maxEngine].present?
      Hash["query" , Hash[ "bool" , Hash[ "must" , must ] ] ]
    end

    def self.build_range_query filter, min = nil , max = nil
      temp = Hash.new
      temp["gte"] = min if min.present?
      temp["lte"] = max if max.present?
      Hash["range" , Hash[ filter.to_s , temp ] ]
    end

    def self.build_match_query filter, value
      Hash["match" , Hash[ filter.to_s , value ] ]
    end

  end
end
