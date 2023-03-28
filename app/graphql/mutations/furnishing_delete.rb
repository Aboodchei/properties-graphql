# frozen_string_literal: true

module Mutations
  class FurnishingDelete < BaseMutation
    description "Deletes a furnishing if it exists"

    field :furnishing, Types::Models::FurnishingType

    argument :delete_input, Types::Inputs::DeleteInputType, required: true

    def resolve(delete_input:)
      furnishing = ::Furnishing.find_by(id: delete_input.id)
      furnishing&.destroy
      { furnishing: furnishing }
    end
  end
end
