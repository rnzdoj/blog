# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::Articles::Create do
  let(:variables) do
    {
      input: {
        attributes: {
          body: 'test'
        }
      }
    }
  end

  it 'is expected to' do
    response = formatted_response(query, key: :createArticle, variables: variables)

    expect(response[:body]).to eq('test')
  end

  def query
    <<~GQL
      mutation createArticle ($input: CreateArticleInput!) {
        createArticle (input: $input) {
          body
          id
        }
      }
    GQL
  end
end
