class AutoVehicleData < SitePrism::Page

  element :input_lisence_plate, '#auto_order_flow_vehicle_data_vehicle_attributes_license_plate'
  element :select_adapted, '#adapted'
  element :select_armored, '#auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof'
  element :button_next_step, '.button.button--primary'

  def complete_vehicle_data
    input_lisence_plate.set 'YOU0000'
    select_adapted.click.select 'não possui'
    select_armored.click.select 'não é'
    button_next_step.click
  end

end
