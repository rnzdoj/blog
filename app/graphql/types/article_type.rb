# frozen_string_literal: true

module Types
  class ArticleType < BaseObject
    field :id, ID
    field :body, String
  end
end
