RSpec.describe User, type: :model do
  it 'Creates A New User' do
    user = build(:user)
    assert(user.valid?)
  end

  it 'Does Not Create Invalid User' do
    user = described_class.new
    assert(!user.valid?)
  end
end
