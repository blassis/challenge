class AutoPricingRequirements < SitePrism::Page

  element :select_brand, '#auto_order_flow_pricing_requirements_vehicle_attributes_make'
  element :select_model, '#auto_order_flow_pricing_requirements_vehicle_attributes_model'
  element :select_car_year, '#auto_order_flow_pricing_requirements_vehicle_attributes_year'
  element :select_car_version, '#auto_order_flow_pricing_requirements_vehicle_attributes_version'
  element :select_car_status, '#auto_order_flow_pricing_requirements_vehicle_attributes_brand_new'
  element :select_car_use, '#auto_order_flow_pricing_requirements_vehicle_attributes_usage'
  element :input_zipcode, '#auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode'
  element :input_cpf, '#auto_order_flow_pricing_requirements_insured_person_attributes_cpf'
  element :select_gender, '#auto_order_flow_pricing_requirements_insured_person_attributes_gender'
  element :input_date_of_birth, '#auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth'
  element :select_marital_status, '#auto_order_flow_pricing_requirements_insured_person_attributes_marital_status'
  element :select_person, '#auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person'
  element :select_young_driver, '#auto_order_flow_pricing_requirements_driver_attributes_young_driver'
  element :select_last_sinister, '#auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim'
  element :button_next_step, '.button.button--primary'

  def complete_pricing_requirements
    select_brand.click.select 'BMW'
    select_model.click.select '220ITOURER'
    select_car_year.click.select '2018'
    select_car_version.click.select '220ITOURER ACTIVE FLEX 2.0 TB AUT. (Gasolina / Flex)'
    select_car_status.click.select 'não é 0km'
    select_car_use.click.select 'Particular'
    input_zipcode.set '04538-133'
    input_cpf.set '123.456.700-88'
    select_marital_status.click.select 'Solteiro(a)'
    select_gender.click.select 'Masculino'
    input_date_of_birth.set '04081998'
    select_person.click.select 'sou'
    select_young_driver.click.select 'Desejo'
    select_last_sinister.click.select 'nunca tive'
    button_next_step.click
  end

end
