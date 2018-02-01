class LoginPage < SitePrism::Page
   element :button_register, '.button.button--secondary', text: 'CADASTRE-SE'
   element :input_email, '#email'
   element :button_next_step, '.button.button-highlight.button--centered'
   element :input_password, '#user_password'
   element :button_go_in, '.button.button-highlight.button--centered'

   def to_sign
     button_register.click
   end

   def login(email, password)
     input_email.set email
     button_next_step.click
     input_password.set password
     button_go_in.click
  end
end
