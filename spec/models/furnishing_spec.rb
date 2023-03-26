# == Schema Information
#
# Table name: furnishings
#
#  id                       :bigint           not null, primary key
#  furniture_deductible     :boolean          default(FALSE), not null
#  overall_furnishing_level :integer          default("unknown"), not null
#  total_furniture_cost     :integer          default(0), not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  property_id              :bigint           not null
#
# Indexes
#
#  index_furnishings_on_furniture_deductible      (furniture_deductible)
#  index_furnishings_on_overall_furnishing_level  (overall_furnishing_level)
#  index_furnishings_on_property_id               (property_id)
#  index_furnishings_on_total_furniture_cost      (total_furniture_cost)
#
# Foreign Keys
#
#  fk_rails_...  (property_id => properties.id)
#
require 'rails_helper'

RSpec.describe Furnishing, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
