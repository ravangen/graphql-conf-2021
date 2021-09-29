# Dynamic GraphQL Schemas

The [`demo`](demo) folder contains an example [`graphql-ruby`](https://graphql-ruby.org/) server that implements [visibility](https://graphql-ruby.org/authorization/visibility.html) to hide parts of a schema based on execution context. Some notable files are:
- [`GraphQL` controller](demo/app/controllers/graphql_controller.rb)
- [`Schema` definition](demo/app/graphql/demo_schema.rb)
- [`BaseField` class](demo/app/graphql/types/base_field.rb)
- [`Query` type](demo/app/graphql/types/query_type.rb)
- [`Product` type](demo/app/graphql/types/product_type.rb)
- [`Product` model](demo/app/models/product.rb)
