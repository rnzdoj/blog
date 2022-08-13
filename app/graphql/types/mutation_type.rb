# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_articles, mutation: Mutations::Articles::Create
  end
end
