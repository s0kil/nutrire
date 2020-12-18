RSpec.describe CategoriesHelper, type: :helper do
  describe '#include_grid_row_order' do
    it 'Alternates Nutrient Articles' do
      category = create(:category, title: 'Category One')
      built_nutrients = build_list(:nutrient, 6, category: category)

      result = [
        { nutrient: built_nutrients[0], grid_row_order: { image: 1, text: 2 } },
        { nutrient: built_nutrients[1], grid_row_order: { image: 1, text: 2 } },
        { nutrient: built_nutrients[2], grid_row_order: { image: 2, text: 1 } },
        { nutrient: built_nutrients[3], grid_row_order: { image: 2, text: 1 } },
        { nutrient: built_nutrients[4], grid_row_order: { image: 1, text: 2 } },
        { nutrient: built_nutrients[5], grid_row_order: { image: 1, text: 2 } },
      ]

      expect(helper.include_grid_row_order(built_nutrients)).to eq(result)
    end
  end
end
