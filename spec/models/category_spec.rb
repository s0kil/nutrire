RSpec.describe Category, type: :model do
  it 'Creates Valid Category' do
    category = build(:category)
    assert(category.valid?)
  end

  it 'Does Not Create Invalid Category' do
    category = described_class.new
    assert(!category.valid?)
  end

  it 'Has Association :nutrients' do
    should have_many(:nutrients).dependent(:nullify)
  end

  it 'Validates :title' do
    should validate_presence_of(:title)
    should validate_uniqueness_of(:title)
  end

  it 'Validates :priority' do
    should validate_presence_of(:priority)
  end
end
