# README

## Setup

- Ruby version `2.7` (consider using [`chruby`](https://github.com/postmodern/chruby))
- Install dependencies: `bundle install`
- Run DB setup?
- Run server: `bundle exec rails server`

## Visibility

By default, the "public" schema is used. To request `Product.costOfGoodsManufactured`, use "internal".

- Public: [`http://127.0.0.1:3000/graphiql?schema=public`](http://127.0.0.1:3000/graphiql?schema=public)
- Internal: [`http://127.0.0.1:3000/graphiql?schema=internal`](http://127.0.0.1:3000/graphiql?schema=internal)
