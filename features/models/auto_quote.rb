class AutoQuote
  attr_accessor :client, :vehicle, :credit_card

  def initialize(client, vehicle, credit_card)
    @client = client
    @vehicle = vehicle
    @credit_card = credit_card
  end

  def lead_page
    AutoLead.new
  end

  def pricing_requiriments_page
    AutoPricingRequirements.new
  end

  def preformatted_coverages_page
    AutoPreformattedCoverage.new
  end

  def coverages_page
    AutoCoveragesSelection.new
  end

  def assistances_page
    AutoAssistancesSelection.new
  end

  def insured_person_page
    AutoInsuredPersonData.new
  end

  def vehicle_data_page
    AutoVehicleData.new
  end

  def credit_card_data_page
    AutoCreditCardData.new
  end

  def insurance_policy_page
    AutoInsurancePolicy.new
  end

  def fill_lead_person_page
    lead_page.flow_auto(@client.name, @client.phone, @client.email)
  end

  def fill_pricing_requiriments_page
    pricing_requiriments_page.complete_pricing_requirements(@client, @vehicle)
  end

  def select_preformatted_coverages_page
    preformatted_coverages_page.select_plan
  end

  def select_coverage_page
    coverages_page.select_coverage(@client.coverages)
  end

  def select_assistances_page
    assistances_page.select_assistances(@client.assistances)
  end

  def fill_insured_person_page
    insured_person_page.complete_insured_person_data(@client)
  end

  def fill_vehicle_data_page
    vehicle_data_page.complete_vehicle_data(@vehicle.licence_plate, @vehicle.adapted, @vehicle.armored)
  end

  def fill_credit_card_data_page
    credit_card_data_page.finalize_purchase(@credit_card)
  end

  def fill_insurance_policy_page
    insurance_policy_page.fill_user_resgistration(@client.password, @client.password)
  end
end
