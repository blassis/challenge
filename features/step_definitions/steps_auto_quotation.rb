Quando(/^o usuário finalizar o fluxo de cotação Auto$/) do
  @home_page = HomePage.new
  @home_page.button_quotation_auto.click
  @auto_loader = AutoLoader.new
  @auto_loader.flow_auto('teste', '11999999999', generate_email)
  @auto_pricing_requirements = AutoPricingRequirements.new
  expect(@auto_pricing_requirements).to have_select_brand
  @auto_pricing_requirements.complete_pricing_requirements
  @auto_preformatted_coverage = AutoPreformattedCoverage.new
  expect(@auto_preformatted_coverage).to have_button_get_from_here
  @auto_preformatted_coverage.select_plan
  @auto_coverage_selection = AutoCoverageSelection.new
  expect(@auto_coverage_selection).to have_button_next_step
  @auto_coverage_selection.select_coverage
  @auto_assistances_selection = AutoAssistancesSelection.new
  expect(@auto_assistances_selection).to have_button_next_step
  @auto_assistances_selection.select_assistances
  @auto_insured_person_data = AutoInsuredPersonData.new
  expect(@auto_insured_person_data).to have_input_full_name
  @auto_insured_person_data.complete_insured_person_data
  @auto_vehicle_data = AutoVehicleData.new
  expect(@auto_vehicle_data).to have_input_lisence_plate
  @auto_vehicle_data.complete_vehicle_data
  @auto_payment_data = AutoPaymentData.new
  expect(@auto_payment_data).to have_input_card_number
  @auto_payment_data.finalize_purchase
end

Então(/^ele consegue ver sua apólice$/) do
  @auto_insurance_policies = AutoInsurancePolicies.new
  expect(@auto_insurance_policies.text_welcome_subtitle.text).to have_content 'Seu seguro tá na mão.'
  @auto_insurance_policies.fill_user_resgistration('12345678', '12345678')
  puts @auto_insurance_policies.text_policy_element_number.text
end
