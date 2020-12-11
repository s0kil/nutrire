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
end
