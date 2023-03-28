# frozen_string_literal: true

module Types::Enums
  class PropertyTypeEnumType < Types::BaseEnum
    description "Property type enum"
    value "house", "A house"
    value "townhouse", "A townhouse"
    value "unit", "A unit"
    value "villa", "A villa"
    value "land", "A land"
  end
end
