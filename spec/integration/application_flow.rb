require 'clearance/rspec'

RSpec.describe 'Application Flow', type: :feature do
  describe 'Registration' do
    it 'Register New User' do
      visit sign_up_path

      expect(page).to have_selector 'form#new_user'

      user = build(:user)
      fill_in 'Name', with: user.name
      fill_in 'Email', with: user.email
      fill_in 'Username', with: user.username
      fill_in 'Password', with: user.password
      click_button('Sign up')

      # User Exists Inside Database
      assert(User.where(name: user.name, username: user.username, email: user.email).one?)
    end

    describe 'Sign In' do
      it 'Sign In Existing User' do
        visit sign_in_path

        user = create(:user)
        fill_in 'Username', with: user.username
        fill_in 'Password', with: user.password
        click_button('Sign in')

        # Redirects To Home Page After Sign In
        expect(page).to have_current_path root_path
      end
    end
  end
end
