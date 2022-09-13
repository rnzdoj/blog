# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Resolvers::ArticlesResolver do
  let_it_be(:article_a) { create(:article) }
  let(:variables) { { first: 10 } }

  it 'must return list of articles' do
    response, errors = paginated_collection('articles', query, variables: variables)

    expect(errors).to be_nil
    expect(response.count).to eq(1)
  end

  def query
    <<~GQL
      query articles ($after: String, $before: String, $first: Int, $last: Int) {
        articles (after: $after, before: $before, first: $first, last: $last) {
          edges {
            cursor
            node {
              body
              id
            }
          }
          nodes {
            body
            id
          }
          pageInfo {
            endCursor
            hasNextPage
            hasPreviousPage
            startCursor
          }
        }
      }
    GQL
  end
end
