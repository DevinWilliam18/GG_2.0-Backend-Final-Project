class Order < ApplicationRecord
  belongs_to :customer
  has_many :details
  has_many :foods, through: :details
end
