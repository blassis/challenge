class AutoInsurancePolicy < SitePrism::Page
  element :text_welcome_subtitle, '.welcome-card__subtitle'
  element :text_policy_element_number, '.welcome-card__message', text: 'Apólice:'
  element :input_password, '#user_password'
  element :input_password_confirmation, '#user_password_confirmation'
  element :button_finish_register, '.welcome-card__action.button.button--centered.button--primary'

  def fill_user_resgistration(password, password_confirmation)
    wait_for_input_password
    input_password.set password
    wait_for_input_password_confirmation
    input_password_confirmation.set password_confirmation
    button_finish_register.click
  end
end
