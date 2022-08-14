# frozen_string_literal: true

def execute(query, context: nil, variables: nil)
  HashWithIndifferentAccess.new(
    BlogSchema.execute(
      query,
      context: context,
      variables: variables
    )
  )
end

def formatted_response(query, key: nil, context: nil, variables: nil)
  response = execute(query, context: context, variables: variables)

  key.nil? ? response[:data] : response[:data][key]
end
