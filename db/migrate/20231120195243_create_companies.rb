class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :ownername
      t.integer :cnpj
      t.integer :whatsapp
      t.string :instagram_link
      t.string :location

      t.timestamps
    end
  end
end
