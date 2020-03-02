class RemovePosterFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :poster, :string
    remove_column :categories, :tshirt, :string
    remove_column :categories, :fabric, :string
    remove_column :categories, :others, :string
  end
end
