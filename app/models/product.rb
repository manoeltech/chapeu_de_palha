# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  amount      :integer
#  description :text
#  name        :string
#  value       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :bigint           not null
#
# Indexes
#
#  index_products_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#
class Product < ApplicationRecord
  belongs_to :company
  has_many :orders
  has_many :clients, through: :orders

  def buy
    self.amount -= 1
    self.save
  end
end
