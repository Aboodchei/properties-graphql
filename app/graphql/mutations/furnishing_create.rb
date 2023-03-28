# frozen_string_literal: true

module Mutations
  class FurnishingCreate < BaseMutation
    description "Creates a new furnishing"

    field :furnishing, Types::Models::FurnishingType

    argument :furnishing_input, Types::Inputs::FurnishingInputType, required: true

    def resolve(furnishing_input:)
      property = ::Property.find_by(id: furnishing_input.property_id)
      furnishing = property&.create_furnishing(**furnishing_input)
      { furnishing: furnishing }
    end
  end
end
