# frozen_string_literal: true

module Articles
  class Creator < ApplicationService
    def call
      return if params.blank?

      current_user.articles.create!(params)
    end
  end
end
