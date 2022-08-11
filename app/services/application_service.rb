# frozen_string_literal: true

class ApplicationService
  include Assigner

  attr_accessor :current_user, :resource_id, :params

  def initialize(attributes)
    assign_attributes(attributes)
  end

  class << self
    def call(attributes)
      new(attributes).call
    end
  end

  def call
    raise NotImplementedError
  end
end
