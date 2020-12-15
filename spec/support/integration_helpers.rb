def sign_in
  user = create :user
  sign_in_as(user)
end

def sign_in_as(user)
  visit sign_in_path

  fill_in 'Username', with: user.username
  fill_in 'Password', with: user.password
  click_button 'Sign in'

  visit root_path
end
