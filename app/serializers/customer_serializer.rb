class CustomerSerializer < ActiveModel::Serializer
  has_many :orders 
  attributes :id, :name, :email, :phone_number, :address
end
