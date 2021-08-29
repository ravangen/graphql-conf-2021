GraphiQL::Rails.config.headers['Authorization'] = -> (context) { "#{context.params['schema']}" }
GraphiQL::Rails.config.initial_query = <<-QUERY
# Welcome to GraphiQL
#
# GraphiQL is an in-browser tool for writing, validating, and
# testing GraphQL queries.
#
# Type queries into this side of the screen, and you will see intelligent
# typeaheads aware of the current GraphQL type schema and live syntax and
# validation errors highlighted within the text.
#
# Keyboard shortcuts:
#
#  Prettify Query:  Shift-Ctrl-P (or press the prettify button above)
#
#     Merge Query:  Shift-Ctrl-M (or press the merge button above)
#
#       Run Query:  Ctrl-Enter (or press the play button above)
#
#   Auto Complete:  Ctrl-Space (or just start typing)

query {
  product(id: "UHJvZHVjdC1Eb24ndCBQYW5pYw==") {
    id
    name
    description(truncateAt: 280)
    body
    createdAt
  }
}
QUERY
