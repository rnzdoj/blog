# frozen_string_literal: true

module Resolvers
  class SearchObjectBase < Base
    include SearchObject.module(:graphql)
  end
end
