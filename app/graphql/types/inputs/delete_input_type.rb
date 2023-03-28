module Types::Inputs
  class DeleteInputType < Types::BaseInputObject
    argument :id, ID, required: true
  end
end
