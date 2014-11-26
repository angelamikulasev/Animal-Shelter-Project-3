class RemoveAvatarFromAnimals < ActiveRecord::Migration
  def change
    remove_column :animals, :avatar, :string
  end
end
