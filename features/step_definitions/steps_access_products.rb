Quando(/^ele clicar no menu Sobre a Youse$/) do
  @home_page.about_youse.click
  @about_youse = AboutYouse.new
end

Então(/^ele consegue visualizar a página correspondente$/) do
  expect(@about_youse.welcome.text).to have_content 'Bem-vindo à Youse'
  expect(@about_youse.welcome_youser.text).to have_content 'Seja bem-vindo, Youser!'
end

Quando(/^ele clicar no menu de Seguro Auto$/) do
  @home_page.access_page_auto
end

Então(/^ele consegue visualizar a página correspondente à Auto$/) do
  @access_product_auto = AcessProducts.new
  expect(@access_product_auto.current_url).to include 'seguro-auto'
  expect(@access_product_auto.title).to eq('Seguro Auto Youse: O Seguro de Carro Online | Youse')
end

Quando(/^ele clicar no menu de Seguro Home$/) do
  @home_page.access_page_home
end

Então(/^ele consegue visualizar a página correspondente à Home$/) do
  @access_product_home = AcessProducts.new
  expect(@access_product_home.current_url).to include 'seguro-residencial'
  expect(@access_product_home.title).to eq('Seguro Residencial Youse: O Seguro Residência Online | Youse')
end

Quando(/^ele clicar no menu de Seguro Life$/) do
  @home_page.access_page_life
end

Então(/^ele consegue visualizar a página correspondente à Life$/) do
  @access_product_life = AcessProducts.new
  expect(@access_product_life.current_url).to include 'seguro-vida'
  expect(@access_product_life.title).to eq('Seguro Vida Youse: O Seguro de Vida Online | Youse')
end
