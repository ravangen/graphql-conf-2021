module Types
  class BaseField < GraphQL::Schema::Field
    argument_class Types::BaseArgument

    # Pass `field ..., schema: :internal` to hide this field
    def initialize(*args, schema: nil, **kwargs, &block)
      @schema = schema
      super(*args, **kwargs, &block)
    end

    def visible?(context)
      # if `schema` argument is for internal, hide field from non-internal clients
      super && (@schema != :internal || context[:has_internal_access])
    end
  end
end
