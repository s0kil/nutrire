RSpec.describe Vote, type: :model do
  it 'Creates Valid Vote' do
    # We Need An Unique User
    user = User.create(name: 'Name', email: 'email@gmail.com', username: 'username', password: 'password')
    vote = build(:vote, user: user)
    assert(vote.valid?)
  end

  it 'Does Not Create Invalid Vote' do
    vote = described_class.new
    assert(!vote.valid?)
  end

  it 'Belongs To :user' do
    should belong_to(:user)
  end

  it 'Belongs To :nutrient' do
    should belong_to(:nutrient)
  end

  it 'Validates :user_id' do
    should validate_presence_of(:user_id)
  end

  it 'Validates :nutrient_id' do
    should validate_presence_of(:nutrient_id)
  end
end
