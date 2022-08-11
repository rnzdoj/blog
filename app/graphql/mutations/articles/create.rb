# frozen_string_literal: true

module Articles
  class Create < BaseMutation
    graphql_name 'CreateArticle'

    class CreateArticleAttributes < Types::BaseInputObject
      argument :body, String, required: true
    end

    argument :arguments, CreateArticleAttributes, required: true

    def resolve(arguments:); end
  end
end
