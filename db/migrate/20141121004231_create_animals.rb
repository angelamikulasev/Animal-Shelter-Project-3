class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.integer :adopter_id
      t.integer :adoptee_id
      t.integer :animal_id
      t.string :name
      t.text :about_me
      t.string :ideal_home
      t.string :species
      t.string :gender
      t.string :child_friendly
      t.text :image
      t.timestamps
    end
  end
end
