class Customer < ApplicationRecord
    has_many :orders
    has_many :details, through: :orders
end
