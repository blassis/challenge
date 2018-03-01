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

  def complete_pricing_requirements(client, vehicle)
    select_brand.click.select vehicle.make
    select_model.click.select vehicle.model
    select_car_year.click.select vehicle.year
    select_car_version.click.select vehicle.version
    select_car_status.click.select vehicle.brand_new
    select_car_use.click.select vehicle.usage_type
    input_zipcode.set client.zip_code
    sleep(2)
    input_cpf.set client.cpf
    select_marital_status.click.select client.marital_status
    select_gender.click.select client.gender
    input_date_of_birth.set client.date_of_birth
    select_person.click.select vehicle.insured_person
    select_young_driver.click.select vehicle.young_driver
    select_last_sinister.click.select vehicle.last_sinister
    button_next_step.click
  end
end
