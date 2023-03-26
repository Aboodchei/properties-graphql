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
FactoryBot.define do
  factory :property do
    title { "MyString" }
    owner_email { "MyString" }
    property_type { 1 }
  end
end
