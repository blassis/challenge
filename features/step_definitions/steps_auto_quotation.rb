Quando(/^o usuário finalizar o fluxo de cotação Auto$/) do
  home_page = HomePage.new
  home_page.button_quotation_auto.click

  client = Client.new
  vehicle = Vehicle.new
  credit_card = CreditCard.new

  @quotation = AutoQuote.new(client, vehicle, credit_card)

  @quotation.fill_lead_person_page
  expect(@quotation.pricing_requiriments_page).to have_select_brand

  @quotation.fill_pricing_requiriments_page
  expect(@quotation.preformatted_coverages_page.text).to have_content 'Escolha as coberturas iniciais, e continue personalizando seu seguro ;)'

  @quotation.select_preformatted_coverages_page
  expect(@quotation.coverages_page.text).to have_content 'Coberturas'

  @quotation.select_coverage_page
  expect(@quotation.assistances_page.text).to have_content 'Sugestões de Assistências Youse para vc.'

  @quotation.select_assistances_page
  expect(@quotation.insured_person_page).to have_input_full_name

  @quotation.fill_insured_person_page
  expect(@quotation.vehicle_data_page).to have_input_licence_plate

  @quotation.fill_vehicle_data_page
  expect(@quotation.credit_card_data_page).to have_input_card_number

  @quotation.fill_credit_card_data_page
end

Então(/^ele consegue ver sua apólice$/) do
  @quotation.fill_insurance_policy_page
  expect(@quotation.insurance_policy_page).to have_text_policy_element_number
  puts @quotation.insurance_policy_page.text_policy_element_number.text
end
