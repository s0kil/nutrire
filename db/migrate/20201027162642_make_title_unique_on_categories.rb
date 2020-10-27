class MakeTitleUniqueOnCategories < ActiveRecord::Migration[6.0]
  def change
    add_index(:categories, :title, unique: true)
  end
end
