class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :poster
      t.string :tshirt
      t.string :fabric
      t.string :others

      t.timestamps
    end
  end
end
