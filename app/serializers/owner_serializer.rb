class OwnerSerializer < ActiveModel::Serializer
  
  has_many :foods
  attributes :id, :owner_name
  
  
end
