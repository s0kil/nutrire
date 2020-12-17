RSpec.describe Category, type: :model do
  subject(:category) { create(:category) }

  it 'Creates Valid Category' do
    category = build(:category)
    assert(category.valid?)
  end

  it 'Does Not Create Invalid Category' do
    category = described_class.new
    assert(!category.valid?)
  end

  it 'Has Association :nutrients' do
    expect(category).to have_many(:nutrients).dependent(:nullify)
  end

  it 'Validates :title Presence' do
    expect(category).to validate_presence_of(:title)
  end

  it 'Validates :title Uniqueness' do
    expect(category).to validate_uniqueness_of(:title)
  end

  it 'Validates :priority' do
    expect(category).to validate_presence_of(:priority)
  end
end
