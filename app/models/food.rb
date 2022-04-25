class Food < ApplicationRecord
  belongs_to :category
  has_many :details
  has_many :orders, through: :details
end
