# == Schema Information
#
# Table name: properties
#
#  id            :bigint           not null, primary key
#  owner_email   :string
#  property_type :integer          default("house"), not null
#  title         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_properties_on_property_type  (property_type)
#
class Property < ApplicationRecord
  enum property_type: { house: 0, townhouse: 1, unit: 2, villa: 3, land: 4 }
  has_one :furnishing, dependent: :destroy
  has_one :valuation, dependent: :destroy
end
