# == Schema Information
#
# Table name: companies
#
#  id             :bigint           not null, primary key
#  cnpj           :integer
#  instagram_link :string
#  location       :string
#  name           :string
#  ownername      :string
#  whatsapp       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Company < ApplicationRecord
  has_many :clients
end
