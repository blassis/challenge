class LoginPage < SitePrism::Page

   element :register, '.button.button--secondary', text: 'CADASTRE-SE'
   element :email, '#email'
   element :next_step, '.button.button-highlight.button--centered'
   element :password, '#user_password'
   element :go_in, '.button.button-highlight.button--centered'

   def to_sign
     register.click
   end

   def login
     email.set 'teste@youse.com'
     next_step.click
     password.set '12345678'
     go_in.click
  end

end
