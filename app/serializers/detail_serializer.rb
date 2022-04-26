class DetailSerializer < ActiveModel::Serializer
  attributes :id, :qty, :total_price
  has_one :food
end
