class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.integer :cost
      t.references :pet
      t.references :vet

      t.timestamps
    end
  end
end
