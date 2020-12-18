RSpec.describe Nutrient, type: :model do
  subject(:nutrient) { create(:nutrient) }

  it 'Creates A Valid Nutrient' do
    nutrient = build(:nutrient)
    assert(nutrient.valid?)
  end

  it 'Does Not Create Invalid Nutrient' do
    nutrient = described_class.new
    assert(!nutrient.valid?)
  end

  it 'Belongs To :author' do
    expect(nutrient).to belong_to(:author).class_name('User').with_foreign_key(:user_id).inverse_of(:nutrients)
  end

  it 'Belongs To :category' do
    expect(nutrient).to belong_to(:category)
  end

  it 'Has Many :votes' do
    expect(nutrient).to have_many(:votes).dependent(:nullify)
  end

  it 'Validates :title' do
    expect(nutrient).to validate_presence_of(:title)
  end

  it 'Validates :user_id' do
    expect(nutrient).to validate_presence_of(:user_id)
  end

  it 'Validates :category_id' do
    expect(nutrient).to validate_presence_of(:category_id)
  end
end
