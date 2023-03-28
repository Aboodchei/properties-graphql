# frozen_string_literal: true

module Types::Models
  class FurnishingType < Types::BaseObject
    description "A furnishing object"
    field :id, ID, null: false
    field :property, Types::Models::PropertyType, null: false
    field :overall_furnishing_level, Types::Enums::OverallFurnishingLevelEnumType, null: false
    field :furniture_deductible, Boolean, null: false
    field :total_furniture_cost, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
