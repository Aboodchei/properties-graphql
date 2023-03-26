# == Schema Information
#
# Table name: valuations
#
#  id                              :bigint           not null, primary key
#  maximum_payment_duration_months :integer          default(0), not null
#  minimum_price                   :integer          default(0), not null
#  optimal_price                   :integer          default(0), not null
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  property_id                     :bigint           not null
#
# Indexes
#
#  index_valuations_on_property_id  (property_id)
#
# Foreign Keys
#
#  fk_rails_...  (property_id => properties.id)
#
FactoryBot.define do
  factory :valuation do
    property { nil }
    optimal_price { 1 }
    minimum_price { 1 }
    maximum_payment_duration_months { 1 }
  end
end
