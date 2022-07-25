class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :full_name
      t.string :cpf
      t.string :cns
      t.string :email
      t.date :birthdate
      t.string :phone
      t.text :photo
      t.boolean :status
      t.refereces :address

      t.timestamps
    end
  end
end
