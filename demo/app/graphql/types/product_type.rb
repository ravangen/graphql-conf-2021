module Types
  class ProductType < Types::BaseObject
    implements GraphQL::Types::Relay::Node

    global_id_field :id # Defines field :id, ID, null: false

    field :name, String, null: false

    field :description, String, null: false do
      argument :truncate_at, Integer, required: false
    end    
    def description(truncate_at: nil)
      if truncate_at.nil?
        object.description
      else
        object.description.truncate(truncate_at, separator: /\s/)
      end
    end
    
    field :body, String, null: true, deprecation_reason: "Use `description` instead."

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
