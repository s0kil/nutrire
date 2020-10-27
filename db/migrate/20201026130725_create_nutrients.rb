class CreateNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrients do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
