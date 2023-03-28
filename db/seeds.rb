puts "Seeding..."
15.times do
  Property.create(
    title: Faker::Address.street_address,
    owner_email: Faker::Internet.email,
    property_type: Property.property_types.keys.sample,
  ).tap do |property|
    property.create_furnishing(
      overall_furnishing_level: Furnishing.overall_furnishing_levels.keys.sample,
      furniture_deductible: [false, true].sample,
      total_furniture_cost: rand(0..1_000_000)
    )
    property.create_valuation(
      maximum_payment_duration_months: rand(0..1_000_000),
      minimum_price: rand(0..1_000_000),
      optimal_price: rand(0..1_000_000),
    )
  end
end
puts "Done!"
