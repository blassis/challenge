class RegisterPage < SitePrism::Page

  element :sign_up_name, '#user_name'
  element :sign_up_email, '#user_email'
  element :sign_up_password, '#user_password'
  element :sign_up_password_confirmation, '#user_password_confirmation'
  element :send_register, '.button.button-highlight.button--centered'

  def register_user(name, email, password, password_confirmation)
    sign_up_name.set name
    sign_up_email.set email
    sign_up_password.set password
    sign_up_password_confirmation.set password_confirmation
    send_register.click
  end
end
