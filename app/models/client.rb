class Client < ApplicationRecord
  belongs_to :company
  has_many :orders
  has_many :products, through: :orders
end
