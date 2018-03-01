class AutoCreditCardData < SitePrism::Page
  element :input_card_number, '#auto_order_flow_payment_data_credit_card_number'
  element :input_card_name, '#auto_order_flow_payment_data_credit_card_name'
  element :select_date_month, '#auto_order_flow_payment_data_credit_card_due_date_month'
  element :select_date_year, '#auto_order_flow_payment_data_credit_card_due_date_year'
  element :input_card_cvv_number, '#auto_order_flow_payment_data_credit_card_cvv_number'
  element :button_finalize_purchase, '.button.confirmation-button.pricing-confirmation-button'

  def finalize_purchase(credit_card)
    input_card_number.set credit_card.card_number
    input_card_name.set credit_card.card_name
    select_date_month.click.select credit_card.month
    select_date_year.click.select credit_card.year
    input_card_cvv_number.set credit_card.cvv
    button_finalize_purchase.click
  end
end
