class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :surname
      t.string :speciality
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
