module Types::Inputs
  class FurnishingInputType < Types::BaseInputObject
    argument :property_id, ID, required: true
    argument :overall_furnishing_level, Types::Enums::OverallFurnishingLevelEnumType, required: false
    argument :furniture_deductible, Boolean, required: false
    argument :total_furniture_cost, Integer, required: false
  end
end
