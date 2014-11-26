class RemoveChildFriendlyColumnFromAnimals < ActiveRecord::Migration
  def change
    remove_column :animals, :child_friendly, :string
  end
end
