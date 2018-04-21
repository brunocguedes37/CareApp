class CreateObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :observations do |t|
      t.string :infection
      t.string :summary
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
