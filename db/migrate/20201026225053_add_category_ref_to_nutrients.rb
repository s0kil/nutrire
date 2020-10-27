class AddCategoryRefToNutrients < ActiveRecord::Migration[6.0]
  def change
    add_reference :nutrients, :category, null: false, foreign_key: true
  end
end
