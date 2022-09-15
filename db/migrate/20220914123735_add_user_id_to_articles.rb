# frozen_string_literal: true

class AddUserIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :user, null: false, foreign_key: true, type: :bigInt
  end
end
