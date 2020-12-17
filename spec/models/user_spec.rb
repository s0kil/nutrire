RSpec.describe User, type: :model do
  subject { create(:user) }

  it 'Creates A New User' do
    user = build(:user)
    assert(user.valid?)
  end

  it 'Does Not Create Invalid User' do
    user = described_class.new
    assert(!user.valid?)
  end

  it 'Has Many :nutrients' do
    should have_many(:nutrients).dependent(:nullify)
  end

  it 'Has Many :votes' do
    should have_many(:votes).dependent(:nullify)
  end

  it 'Validates :name' do
    should validate_presence_of(:name)
  end

  it 'Validates :password' do
    should validate_presence_of(:password)
  end

  it 'Validates :email' do
    should validate_presence_of(:email)
    should validate_uniqueness_of(:email).ignoring_case_sensitivity
  end

  it 'Validates :username' do
    should validate_presence_of(:username)
    should validate_uniqueness_of(:username)
  end
end
