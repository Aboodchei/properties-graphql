module Types
  class MutationType < Types::BaseObject
    field :property_create, mutation: Mutations::PropertyCreate
    field :valuation_create, mutation: Mutations::ValuationCreate
    field :furnishing_create, mutation: Mutations::FurnishingCreate

    field :property_delete, mutation: Mutations::PropertyDelete
    field :valuation_delete, mutation: Mutations::ValuationDelete
    field :furnishing_delete, mutation: Mutations::FurnishingDelete
  end
end
