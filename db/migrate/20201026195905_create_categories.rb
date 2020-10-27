class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.numeric :priority

      t.timestamps
    end
  end
end
