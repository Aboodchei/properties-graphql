module Types::Inputs
  class ValuationInputType < Types::BaseInputObject
    argument :property_id, ID, required: true
    argument :optimal_price, Integer, required: false
    argument :minimum_price, Integer, required: false
    argument :maximum_payment_duration_months, Integer, required: false
  end
end
