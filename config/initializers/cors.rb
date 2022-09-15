# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://blog-web-101.herokuapp.com/'
    resource '*',
             headers: :any,
             credentials: true,
             methods: %i[get post patch put]
  end
end
