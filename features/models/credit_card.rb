class CreditCard
  include DataMagic
  attr_accessor :card_number, :card_name, :month, :year, :cvv

  def initialize
    credit_card = data_for 'credit_card/default'

    @card_number = credit_card['card_number']
    @card_name = credit_card['card_name']
    @month = credit_card['month']
    @year = credit_card['year']
    @cvv = credit_card['cvv']
  end
end
