((comment) @jsdoc)

((regex_pattern) @regex)

(call_expression
  function: ((identifier) @language)
  arguments: ((template_string) @content
              (#offset! @content 0 1 0 -1)))

(call_expression
  function: ((identifier) @_name
             (#match? @_name "^(gql|graphql)$"))
  arguments: ((template_string) @graphql
              (#offset! @graphql 0 1 0 -1)))
