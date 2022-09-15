# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActionController::MimeResponds

  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if resource.is_a?(Hash) then super
    elsif resource.errors.present? then render json: error_message, status: :unprocessable_entity
    else
      render json: resource
    end
  end

  def error_message
    { errors: resource.errors.full_messages }
  end
end
