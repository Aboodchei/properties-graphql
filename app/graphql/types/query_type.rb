module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    ["property", "valuation", "furnishing"].each do |model_name|
      klass_name = model_name.camelize
      klass = klass_name.constantize
      graphql_klass = "Types::Models::#{klass_name}Type".constantize

      field model_name.to_sym, graphql_klass, "Find a #{model_name} by ID" do
        argument :id, ID
      end

      field model_name.pluralize, [graphql_klass], "Get all #{model_name.pluralize}"

      define_method model_name do |id:|
        klass.find_by(id: id)
      end

      define_method model_name.pluralize do
        klass.all
      end
    end
  end
end
