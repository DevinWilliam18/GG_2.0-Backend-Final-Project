class OrderSerializer < ActiveModel::Serializer
  attributes :id, :status, :finished_time
  has_many :details
end
