# frozen_string_literal: true

module Resolvers
  class ArticlesResolver < SearchObjectBase
    graphql_name 'Articles'
    description 'query a list of articles'

    scope { Article.all }

    type Types::ArticleType.connection_type, null: false
  end
end
