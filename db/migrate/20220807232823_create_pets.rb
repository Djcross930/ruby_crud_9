class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :name
      t.string :age
      t.string :integer

      t.timestamps
    end
  end
end
