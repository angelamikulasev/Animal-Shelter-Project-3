class AddCategoryIdToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :category_id, :integer
  end
end