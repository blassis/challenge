class AutoPaymentData < SitePrism::Page

  element :input_card_number, '#auto_order_flow_payment_data_credit_card_number'
  element :input_card_name, '#auto_order_flow_payment_data_credit_card_name'
  element :select_date_month, '#auto_order_flow_payment_data_credit_card_due_date_month'
  element :select_date_year, '#auto_order_flow_payment_data_credit_card_due_date_year'
  element :input_card_cvv_number, '#auto_order_flow_payment_data_credit_card_cvv_number'
  element :button_finalize_purchase, '.button.confirmation-button.pricing-confirmation-button'

  def finalize_purchase
    input_card_number.set '4111111111111111'
    input_card_name.set 'name test'
    select_date_month.click.select '3'
    select_date_year.click.select '20'
    input_card_cvv_number.set '222'
    button_finalize_purchase.click
  end

end
