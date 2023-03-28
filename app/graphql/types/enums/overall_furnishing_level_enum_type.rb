# frozen_string_literal: true

module Types::Enums
  class OverallFurnishingLevelEnumType < Types::BaseEnum
    description "Overall furnishing level enum"
    value "unknown", "¯\\_(ツ)_/¯"
    value "very_bad", "Very bad furnishing level"
    value "bad", "Bad furnishing level"
    value "normal", "Normal furnishing level"
    value "good", "Good furnishing level"
    value "very_good", "Very good furnishiing level"
  end
end
