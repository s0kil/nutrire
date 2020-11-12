module CategoriesHelper
  def include_grid_row_order(nutrients = [])
    alternate = true
    nutrients.map.with_index do |nutrient, index|
      alternate = !alternate if (index % 2).zero?
      row_order = alternate ? { image: 2, text: 1 } : { image: 1, text: 2 }

      {
        nutrient: nutrient,
        grid_row_order: row_order
      }
    end
  end
end
