# typed: false
# frozen_string_literal: true

# Used by Render to know app is running
class HealthController < ApplicationController
  def index
    render json: { status: "up" }
  end
end
