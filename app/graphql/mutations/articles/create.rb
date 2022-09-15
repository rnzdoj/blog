# frozen_string_literal: true

module Mutations
  module Articles
    class Create < BaseMutation
      graphql_name 'CreateArticle'

      class CreateArticleAttributes < Types::BaseInputObject
        argument :body, String, required: true
      end

      argument :attributes, CreateArticleAttributes, required: true

      type Types::ArticleType

      def resolve(attributes:)
        ::Articles::Creator.call(params: attributes.to_h, current_user: current_user)
      end
    end
  end
end
