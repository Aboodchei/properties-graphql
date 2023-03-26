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
require 'rails_helper'

RSpec.describe Property, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
