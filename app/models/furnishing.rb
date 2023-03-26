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
class Furnishing < ApplicationRecord
  belongs_to :property
  enum overall_furnishing_level: { unknown: 0, very_bad: 1, bad: 2, normal: 3, good: 4, very_good: 5 }
end
