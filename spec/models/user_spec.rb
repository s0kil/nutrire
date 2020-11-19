RSpec.describe User, type: :model do
  it 'Creates A New User' do
    user = build(:user)
    assert(user.valid?)
  end
end
