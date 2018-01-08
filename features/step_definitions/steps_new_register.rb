Quando(/^realizar um cadastro$/) do
  @name = 'Cucumber Test'

  @home_page.button_my_account
  login_page = LoginPage.new
  login_page.to_sign
  register_page = RegisterPage.new
  register_page.register_user(@name, generate_email, '12345678', '12345678')
end

Então(/^será redirecionado para a área logada$/) do
  @my_account_page = MyAccountPage.new
  expect(@my_account_page.confirmation.text).to have_content "Olá, #{@name.first}"
end
