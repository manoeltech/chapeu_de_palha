class Order < ApplicationRecord
  belongs_to :product
  belongs_to :client
  belongs_to :company, optional: true

  enum status: { em_espera: 0, preparando: 1, entregue: 2}
end
