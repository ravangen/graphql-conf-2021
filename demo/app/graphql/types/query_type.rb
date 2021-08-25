module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :product, ProductType, null: false do
      argument :id, ID, required: true
    end
    def product(id:)
      type_name, item_id = GraphQL::Schema::UniqueWithinType.decode(id)
      return nil if type_name != "Product"
      Product.find(item_id)
    end
  end
end
