module SessionHelpers
  def sign_up(user)
    click_link("Sign up")
    fill_in :user_email, with: user.email
    fill_in :user_password, with: user.password
    fill_in :user_password_confirmation, with: user.password
    click_button("Sign up")
  end

  def sign_in(user)
    visit('/')
    click_link("Sign in")
    fill_in :user_email, with: user.email
    fill_in :user_password, with: user.password
    click_button("Log in")
  end
end
