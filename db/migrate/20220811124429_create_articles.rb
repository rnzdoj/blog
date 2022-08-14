# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles, type: :uuid do |t|
      t.text :body

      t.timestamps
    end
  end
end
