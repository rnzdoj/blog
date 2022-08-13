# frozen_string_literal: true

module Resolvers
  class ArticlesResolver < Resolvers::Base
    graphql_name 'Articles'

    type [Types::ArticleType], null: false

    def resolve
      Article.all
    end
  end
end
