Quando(/^realizar um cadastro$/) do
  client = Client.new
  @name = client.name
  @home_page.button_my_account
  login_page = LoginPage.new
  login_page.to_sign
  register_page = RegisterPage.new
  register_page.register_user(client.name, client.email, client.password, client.password)
end

Então(/^será redirecionado para a área logada$/) do
  @my_account_page = MyAccountPage.new
  expect(@my_account_page.confirmation.text).to have_content "Olá, #{@name.first}"
end
