# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'rd@selise.ch' }
    password { 'password' }
  end
end
