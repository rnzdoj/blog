# frozen_string_literal: true

module Resolvers
  class Base < GraphQL::Schema::Resolver
    include GraphqlHelper
  end
end
