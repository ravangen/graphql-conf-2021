module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :product, ProductType, null: true do
      argument :id, ID, required: true
    end
    def product(id:)
      type_name, item_id = GraphQL::Schema::UniqueWithinType.decode(id)
      return nil if type_name != "Product"
      Product.find(item_id)
    end

    field :products, ProductType.connection_type, null: false
    def products
        Product.all
    end
  end
end
