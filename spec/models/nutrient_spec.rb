RSpec.describe Nutrient, type: :model do
  it 'Creates A Valid Nutrient' do
    nutrient = build(:nutrient)
    assert(nutrient.valid?)
  end

  it 'Does Not Create Invalid Nutrient' do
    nutrient = described_class.new
    assert(!nutrient.valid?)
  end

  it 'Belongs To :author' do
    should belong_to(:author)
  end

  it 'Belongs To :category' do
    should belong_to(:category)
  end

  it 'Has Many :votes' do
    should have_many(:votes).dependent(:nullify)
  end

  it 'Validates :title' do
    should validate_presence_of(:title)
  end

  it 'Validates :user_id' do
    should validate_presence_of(:user_id)
  end

  it 'Validates :category_id' do
    should validate_presence_of(:category_id)
  end
end
