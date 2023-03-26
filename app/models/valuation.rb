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
class Valuation < ApplicationRecord
  belongs_to :property
end
