class RenameArticleToNutrient < ActiveRecord::Migration[6.0]
  def change
    rename_table('articles', 'nutrients')
  end
end
