class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name, { limit: 64 }
      t.string :breed, { limit: 64 }
      t.integer :age
      t.boolean :cute

      t.timestamps(null: false)
    end
  end
end
