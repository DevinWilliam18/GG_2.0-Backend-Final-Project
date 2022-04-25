class FoodSerializer < ActiveModel::Serializer
  has_many :details
  attributes :id, :food_name, :description, :qty, :price
end
