# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::Articles::Create do
  it 'is expected to' do
    response = formatted_response(query, key: :createComment)

    expect(response[:body]).to eq('test')
  end

  def query
    <<~GQL
      mutation {
         createComment(input: {
           attributes: {
            body: "test"
           }
         }) {
           id
           body
         }
       }
    GQL
  end
end
