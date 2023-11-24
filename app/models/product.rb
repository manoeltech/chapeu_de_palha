class Product < ApplicationRecord
  belongs_to :company
  has_many :orders
  has_many :clients, through: :orders

  def buy
    self.amount -= 1
    self.save
  end
end
