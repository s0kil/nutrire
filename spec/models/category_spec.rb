RSpec.describe Category, type: :model do
  it 'Creates Valid Category' do
    category = build(:category)
    assert(category.valid?)
  end

  it 'Does Not Create Invalid Category' do
    category = described_class.new
    assert(!category.valid?)
  end
end
