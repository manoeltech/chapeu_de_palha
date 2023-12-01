# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  status     :integer          default("em_espera")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :bigint           not null
#  company_id :bigint           not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_orders_on_client_id   (client_id)
#  index_orders_on_company_id  (company_id)
#  index_orders_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id)
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (product_id => products.id)
#
class Order < ApplicationRecord
  belongs_to :product
  belongs_to :client
  belongs_to :company, optional: true
  has_many :stocks, dependent: :destroy

  enum status: { em_espera: 0, preparando: 1, entregue: 2}
end
