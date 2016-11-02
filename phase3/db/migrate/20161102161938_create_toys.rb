class CreateToys < ActiveRecord::Migration[5.0]
  def change
    create_table :toys do |t|

      t.timestamps
    end
  end
end
