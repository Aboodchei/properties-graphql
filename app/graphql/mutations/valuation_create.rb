# frozen_string_literal: true

module Mutations
  class ValuationCreate < BaseMutation
    description "Creates a new valuation"

    field :valuation, Types::Models::ValuationType

    argument :valuation_input, Types::Inputs::ValuationInputType, required: true

    def resolve(valuation_input:)
      property = ::Property.find_by(id: valuation_input.property_id)
      valuation = property&.create_valuation(**valuation_input)
      { valuation: valuation }
    end
  end
end
