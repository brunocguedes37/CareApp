class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.integer :phone
      t.text :address
      t.string :email

      t.timestamps
    end
  end
end
