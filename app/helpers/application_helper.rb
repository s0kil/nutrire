module ApplicationHelper
  def user_authentication
    tag.div(class: 'user-authentication') do
      if signed_in?
        safe_join([
                    'Signed in as: ',
                    current_user.email,
                    (button_to 'Sign out', sign_out_path, method: :delete)
                  ])
      else
        safe_join([
                    (link_to 'Sign in', sign_in_path),
                    (link_to 'Sign Up', sign_up_path)
                  ])
      end
    end
  end

  def flash_message
    tag.div(class: 'flash') do
      flash.map do |key, value|
        tag.div(value, class: "flash #{key}")
      end
    end
  end
end
