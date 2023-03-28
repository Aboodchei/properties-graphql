# frozen_string_literal: true

module Types::Models
  class ValuationType < Types::BaseObject
    description "A valuation object"
    field :id, ID, null: false
    field :property, Types::Models::PropertyType, null: false
    field :optimal_price, Integer, null: false
    field :minimum_price, Integer, null: false
    field :maximum_payment_duration_months, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
