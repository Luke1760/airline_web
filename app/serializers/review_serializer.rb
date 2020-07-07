class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :tittle, :description, :score, :airline_id
  belongs_to :airline
end
