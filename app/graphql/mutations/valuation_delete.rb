# frozen_string_literal: true

module Mutations
  class ValuationDelete < BaseMutation
    description "Deletes a valuation if it exists"

    field :valuation, Types::Models::ValuationType

    argument :delete_input, Types::Inputs::DeleteInputType, required: true

    def resolve(delete_input:)
      valuation = ::Valuation.find_by(id: delete_input.id)
      valuation&.destroy
      { valuation: valuation }
    end
  end
end
