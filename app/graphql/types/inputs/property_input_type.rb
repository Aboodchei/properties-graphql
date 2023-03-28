module Types::Inputs
  class PropertyInputType < Types::BaseInputObject
    argument :title, String, required: false
    argument :owner_email, String, required: false
    argument :property_type, Types::Enums::PropertyTypeEnumType, required: false
  end
end
