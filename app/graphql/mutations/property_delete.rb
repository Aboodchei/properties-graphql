# frozen_string_literal: true

module Mutations
  class PropertyDelete < BaseMutation
    description "Deletes a property if it exists"

    field :property, Types::Models::PropertyType

    argument :delete_input, Types::Inputs::DeleteInputType, required: true

    def resolve(delete_input:)
      property = ::Property.find_by(id: delete_input.id)
      property&.destroy
      { property: property }
    end
  end
end
