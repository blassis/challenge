Dado(/^que o usuário esteja no site da Youse$/) do
  @home_page = HomePage.new
  @home_page.load
end

E(/^que o usuário tenha uma conta$/) do
  @home_page.button_my_account
end

Quando(/^ele realiza login$/) do
  @login_page = LoginPage.new
  @login_page.login
end

Então(/^ele vê a página inicial com seus dados$/) do
  @my_account_page = MyAccountPage.new
  expect(@my_account_page.confirmation.text).to have_content 'teste'
end

E(/^que o usuário esteja logado$/) do
  step 'que o usuário tenha uma conta'
  step 'ele realiza login'
  step 'ele vê a página inicial com seus dados'
end

Quando(/^ele clicar em sair$/) do
  @my_account_page.logout
end

Então(/^ele vê a página inicial da Youse$/) do
  @home_page = HomePage.new
  expect(@home_page.my_account.text).to have_content 'Minha conta'
end
