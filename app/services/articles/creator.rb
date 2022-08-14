# frozen_string_literal: true

module Articles
  class Creator < ApplicationService
    def call
      return if params.blank?

      Article.create!(params)
    end
  end
end
