class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
