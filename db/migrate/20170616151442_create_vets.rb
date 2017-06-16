class CreateVets < ActiveRecord::Migration[5.1]
  def change
    create_table :vets do |t|
      t.string :name
      t.integer :years_of_experience
      t.string :specialty

      t.timestamps
    end
  end
end
