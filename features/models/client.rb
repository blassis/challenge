class Client
  include DataMagic
  attr_accessor :name, :phone, :email, :cpf, :marital_status, :gender, :zip_code,
  :date_of_birth, :nationality, :income, :address_number, :coverages, :assistances,
  :email_youse, :password

  def initialize
    client = data_for 'client/default'

    @name = client['name'].delete('.')
    @phone = client['phone']
    @email = client['email']
    @cpf = client['cpf']
    @marital_status = client['marital_status']
    @gender = client['gender']
    @zip_code = client['zip_code']
    @date_of_birth = client['date_of_birth']
    @nationality = client['nationality']
    @income = client['income']
    @address_number = client['address_number']
    @coverages = client['coverages']
    @assistances = client['assistances']
    @email_youse = client['email_youse']
    @password = client['password']
  end
end
