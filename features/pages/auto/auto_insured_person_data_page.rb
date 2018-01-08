class AutoInsuredPersonData < SitePrism::Page

  element :input_full_name, '#auto_order_flow_insured_person_data_insured_person_attributes_name'
  element :select_nationality, '#auto_order_flow_insured_person_data_insured_person_attributes_nationality'
  element :select_salary_range, '#auto_order_flow_insured_person_data_insured_person_attributes_salary_range'
  element :input_zip_code, '#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_zipcode'
  element :input_address, '#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_street'
  element :input_number, '#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number'
  element :input_complement, '#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement'
  element :input_neighborhood, '#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_neighborhood'
  element :button_next_step, '.narrative-form__paragraph .button.button--primary'

  def complete_insured_person_data
    input_full_name.set 'teste teste'
    select_nationality.click.select 'Brasil'
    select_salary_range.click.select 'Até R$ 800,00'
    input_zip_code.set '04538-133'
    input_number.set '222'
    button_next_step.click
  end

end
