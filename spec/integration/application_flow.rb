RSpec.describe 'Application Flow', type: :feature, js: true do
  describe 'Registration' do
    it 'Register New User' do
      visit sign_up_path

      expect(page).to have_selector 'form#new_user'

      user = build :user
      fill_in 'Name', with: user.name
      fill_in 'Email', with: user.email
      fill_in 'Username', with: user.username
      fill_in 'Password', with: user.password
      click_button 'Sign up'

      # User Exists Inside Database
      assert User.where(name: user.name, username: user.username, email: user.email).one?
    end

    describe 'Sign In' do
      it 'Sign In Existing User' do
        sign_in

        # Redirects To Home Page After Sign In
        expect(page).to have_current_path root_path
      end
    end

    describe 'Create Category' do
      it 'Creates Category' do
        sign_in
        visit new_category_path

        category = build :category

        fill_in 'Title', with: category.title
        fill_in 'Priority', with: category.priority
        click_button 'Create Category'

        assert Category.where(title: category.title, priority: category.priority).one?
      end
    end

    describe 'Create Nutrient Article' do
      it 'Creates Nutrient' do
        sign_in

        category = create :category
        nutrient = build :nutrient, category: category

        visit new_nutrient_path
        expect(page).to have_selector 'form#new_nutrient'

        fill_in 'Title', with: nutrient.title
        select category.title, from: 'Category'
        fill_in_rich_text_area with: nutrient.text # Requires JS
        click_button 'Create Nutrient'

        assert Nutrient.where(title: nutrient.title, text: nutrient.text, category: category).one?
      end
    end
  end
end
