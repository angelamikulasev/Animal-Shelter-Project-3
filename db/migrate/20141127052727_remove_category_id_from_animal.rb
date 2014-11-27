class RemoveCategoryIdFromAnimal < ActiveRecord::Migration
  def change
    remove_column :animals, :category_id, :integer
  end
end
