class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :cep
      t.string :public_place
      t.string :complement
      t.string :district
      t.string :city
      t.string :uf
      t.string :cod_ibge
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
