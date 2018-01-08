class AutoLoader < SitePrism::Page

  element :input_name, '#auto_order_flow_lead_person_data_lead_person_attributes_name'
  element :input_phone, '#auto_order_flow_lead_person_data_lead_person_attributes_phone'
  element :input_email, '#auto_order_flow_lead_person_data_lead_person_attributes_email'
  element :btn_next_step, '.button.button--primary'
  element :quotation_auto, '.h2.section-vertical-spacing'

  def flow_auto(name, phone, email)
    input_name.set name
    input_phone.set phone
    input_email.set email
    btn_next_step.click
  end

end
