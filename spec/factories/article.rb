# frozen_string_literal: true

FactoryBot.define  do
  factory :article do
    body { Faker::Lorem.paragraph }
  end
end
