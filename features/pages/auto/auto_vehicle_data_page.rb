class AutoVehicleData < SitePrism::Page
  element :input_licence_plate, '#auto_order_flow_vehicle_data_vehicle_attributes_license_plate'
  element :select_adapted, '#adapted'
  element :select_armored, '#auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof'
  element :button_next_step, '.button.button--primary'

  def complete_vehicle_data(licence_plate, adapted, armored)
    input_licence_plate.set licence_plate
    select_adapted.click.select adapted
    select_armored.click.select armored
    button_next_step.click
  end
end
