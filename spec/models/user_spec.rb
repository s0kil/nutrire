RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  it 'Creates A New User' do
    user = build(:user)
    assert(user.valid?)
  end

  it 'Does Not Create Invalid User' do
    user = described_class.new
    assert(!user.valid?)
  end

  it 'Has Many :nutrients' do
    expect(user).to have_many(:nutrients).dependent(:nullify)
  end

  it 'Has Many :votes' do
    expect(user).to have_many(:votes).dependent(:nullify)
  end

  it 'Validates :name' do
    expect(user).to validate_presence_of(:name)
  end

  it 'Validates :password' do
    expect(user).to validate_presence_of(:password)
  end

  it 'Validates :email Presence' do
    expect(user).to validate_presence_of(:email)
  end

  it 'Validates :email Uniqueness' do
    expect(user).to validate_uniqueness_of(:email).ignoring_case_sensitivity
  end

  it 'Validates :username Presence' do
    expect(user).to validate_presence_of(:username)
  end

  it 'Validates :username Uniqueness' do
    expect(user).to validate_uniqueness_of(:username)
  end
end
