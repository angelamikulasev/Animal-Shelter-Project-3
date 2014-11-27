class ChangeStringFormatInAnimals < ActiveRecord::Migration
  def change
    change_column :animals, :child_friendly, :boolean
  end
end
