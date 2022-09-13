# frozen_string_literal: true

def execute(query, context: nil, variables: nil, current_user: nil)
  HashWithIndifferentAccess.new(
    BlogSchema.execute(
      query,
      context: { **Hash(context), current_user: current_user },
      variables: variables
    )
  )
end

def formatted_response(query, key: nil, context: nil, variables: nil)
  response = execute(query, context: context, variables: variables)

  key.nil? ? response[:data] : response[:data][key]
end

def paginated_collection(node, query_string, current_user: nil, variables: nil)
  response = execute(query_string, current_user: current_user, variables: variables)
  [
    response.dig(:data, node, :edges)&.pluck(:node),
    response[:errors]
  ]
rescue StandardError
  error = response.dig(:errors, 0)

  ap case error.class
     when Hash
       error[:message]
     else
       error
     end
end
