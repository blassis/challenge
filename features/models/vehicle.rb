class Vehicle
  include DataMagic
  attr_accessor :make, :model, :year, :version, :brand_new, :usage_type, :insured_person,
  :young_driver, :last_sinister, :licence_plate, :adapted, :armored

  def initialize
    vehicle = data_for 'vehicle/default'

    @make = vehicle['make']
    @model = vehicle['model']
    @year = vehicle['year']
    @version = vehicle['version']
    @brand_new = vehicle['brand_new']
    @usage_type = vehicle['usage_type']
    @insured_person = vehicle['insured_person']
    @young_driver = vehicle['young_driver']
    @last_sinister = vehicle['last_sinister']
    @licence_plate = vehicle['licence_plate']
    @adapted = vehicle['adapted']
    @armored = vehicle['armored']
  end
end
