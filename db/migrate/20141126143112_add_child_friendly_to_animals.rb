class AddChildFriendlyToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :child_friendly, :boolean
  end
end
