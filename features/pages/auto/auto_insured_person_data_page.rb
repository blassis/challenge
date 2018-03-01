class AutoInsuredPersonData < SitePrism::Page
  element :input_full_name, '#auto_order_flow_insured_person_data_insured_person_attributes_name'
  element :select_nationality, '#auto_order_flow_insured_person_data_insured_person_attributes_nationality'
  element :select_salary_income, '#auto_order_flow_insured_person_data_insured_person_attributes_salary_range'
  element :input_address_number, '#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number'
  element :button_next_step, '.narrative-form__paragraph .button.button--primary'

  def complete_insured_person_data(client)
    input_full_name.set client.name
    select_nationality.click.select client.nationality
    select_salary_income.click.select client.income
    input_address_number.set client.address_number
    button_next_step.click
  end
end
