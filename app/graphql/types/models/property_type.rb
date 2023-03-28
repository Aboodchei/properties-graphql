# frozen_string_literal: true

module Types::Models
  class PropertyType < Types::BaseObject
    description "A property object"
    field :id, ID, null: false
    field :title, String
    field :owner_email, String
    field :property_type, Types::Enums::PropertyTypeEnumType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :furnishing, Types::Models::FurnishingType
    field :valuation, Types::Models::ValuationType
  end
end
